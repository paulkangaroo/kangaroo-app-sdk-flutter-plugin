import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/business_list/businesses_api_interface.dart';



class BusinessesApiFederated extends BusinessesApiInterface {
  @override
Future<Result<Businesses>?> getBusinesses() async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_businesses');

    return BusinessesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _businessesEvent =
      const EventChannel("customer_sdk/events/get_businesses");

  @override
  Stream<Result<Businesses>> get businessesStream {
    return _businessesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = Businesses.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case Businesses:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
