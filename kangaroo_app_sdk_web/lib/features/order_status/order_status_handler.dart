// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/order_status/order_status_platform_interface.dart';


class OrderStatusHandler extends OrderStatusApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    OrderStatusApiInterface.instance = OrderStatusHandler();
  }

  @override
  getOrderStatus({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = OrderStatusApi().getOrderStatus(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return OrderStatusApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<OrderStatusResponseModel>> get orderStatusStream {
    var controller = StreamController<String>();

    OrderStatusApi().observeOrderStatusState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = OrderStatusResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case OrderStatusResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.orderStatus.OrderStatusApi')
extension type OrderStatusApi._(JSObject _) implements JSObject {
  external factory OrderStatusApi();

  external JSPromise<JSString?> getOrderStatus( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeOrderStatusState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

