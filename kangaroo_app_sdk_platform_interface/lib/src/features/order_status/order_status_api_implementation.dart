import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/order_status/order_status_api_interface.dart';



class OrderStatusApiFederated extends OrderStatusApiInterface {
  @override
Future<Result<OrderStatusResponseModel>?> getOrderStatus({ 
        final Map<String, String>? overrideHeaders,
        required final String businessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_order_status',
    {
      'overrideHeaders' : overrideHeaders,
      'businessId' : businessId
    }
    );

    return OrderStatusApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _orderStatusEvent =
      const EventChannel("customer_sdk/events/get_order_status");

  @override
  Stream<Result<OrderStatusResponseModel>> get orderStatusStream {
    return _orderStatusEvent.receiveBroadcastStream().distinct().map((event) {
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
