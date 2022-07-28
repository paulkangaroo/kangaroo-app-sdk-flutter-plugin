import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_default_business_id/get_default_business_id_api_interface.dart';



class GetDefaultBusinessIdApiFederated extends GetDefaultBusinessIdApiInterface {
  @override
  getDefaultBusinessId({ 
        required final String businessId
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_default_business_id',
    {
      'businessId' : businessId
    }
    );
  }

  static const EventChannel _getDefaultBusinessIdEvent =
      const EventChannel("customer_sdk/events/get_default_business_id");

  @override
  Stream<Result<DefaultBusiness>> get getDefaultBusinessIdStream {
    return _getDefaultBusinessIdEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = DefaultBusiness.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case DefaultBusiness:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
