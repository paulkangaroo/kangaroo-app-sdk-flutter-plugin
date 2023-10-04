import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/business/business_api_interface.dart';



class BusinessApiFederated extends BusinessApiInterface {
  @override
Future<Result<Business>?> getBusiness({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_business',
    {
      'businessId' : businessId
    }
    );

    return BusinessApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _businessEvent =
      const EventChannel("customer_sdk/events/get_business");

  @override
  Stream<Result<Business>> get businessStream {
    return _businessEvent.receiveBroadcastStream().distinct().map((event) {
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
