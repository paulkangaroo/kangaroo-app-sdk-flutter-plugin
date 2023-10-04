import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/update_default_business_id/update_default_business_id_api_interface.dart';



class UpdateDefaultBusinessIdApiFederated extends UpdateDefaultBusinessIdApiInterface {
  @override
Future<Result<DefaultBusiness>?> updateDefaultBusinessId({ 
        required final String businessId,
        required final String defaultBusinessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/update_default_business_id',
    {
      'businessId' : businessId,
      'defaultBusinessId' : defaultBusinessId
    }
    );

    return UpdateDefaultBusinessIdApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _updateDefaultBusinessIdEvent =
      const EventChannel("customer_sdk/events/update_default_business_id");

  @override
  Stream<Result<DefaultBusiness>> get updateDefaultBusinessIdStream {
    return _updateDefaultBusinessIdEvent.receiveBroadcastStream().distinct().map((event) {
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
