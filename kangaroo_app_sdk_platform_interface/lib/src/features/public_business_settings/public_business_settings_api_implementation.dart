import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_business_settings/public_business_settings_api_interface.dart';



class PublicBusinessSettingsApiFederated extends PublicBusinessSettingsApiInterface {
  @override
Future<Result<PublicBusinessSettings>?> getPublicBusinessSettings() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_business_settings');

    return PublicBusinessSettingsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicBusinessSettingsEvent =
      const EventChannel("customer_sdk/events/get_public_business_settings");

  @override
  Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    return _publicBusinessSettingsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicBusinessSettings.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicBusinessSettings:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
