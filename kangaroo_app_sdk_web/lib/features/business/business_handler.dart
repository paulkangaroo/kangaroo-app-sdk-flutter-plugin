// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/business/business_platform_interface.dart';


class BusinessHandler extends BusinessApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    BusinessApiInterface.instance = BusinessHandler();
  }

  @override
  getBusiness({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = BusinessApi().getBusiness(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return BusinessApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<Business>> get businessStream {
    var controller = StreamController<String>();

    BusinessApi().observeBusinessState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = Business.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case Business:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.business.BusinessApi')
extension type BusinessApi._(JSObject _) implements JSObject {
  external factory BusinessApi();

  external JSPromise<JSString?> getBusiness( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeBusinessState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

