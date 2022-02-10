import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/strings/strings_api_interface.dart';



class StringsApiFederated extends StringsApiInterface {
  @override
  getStrings() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_strings');
  }

  static const EventChannel _stringsEvent =
      const EventChannel("customer_sdk/events/get_strings");

  @override
  Stream<Result<ApplicationStringsModel>> get stringsStream {
    return _stringsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = ApplicationStringsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ApplicationStringsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
