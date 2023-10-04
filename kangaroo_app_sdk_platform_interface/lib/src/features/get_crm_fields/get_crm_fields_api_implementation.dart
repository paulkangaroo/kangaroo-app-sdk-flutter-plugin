import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_crm_fields/get_crm_fields_api_interface.dart';



class GetCrmFieldsApiFederated extends GetCrmFieldsApiInterface {
  @override
Future<Result<CrmFields>?> getCrmFields() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_crm_fields');

    return GetCrmFieldsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getCrmFieldsEvent =
      const EventChannel("customer_sdk/events/get_crm_fields");

  @override
  Stream<Result<CrmFields>> get getCrmFieldsStream {
    return _getCrmFieldsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = CrmFields.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CrmFields:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
