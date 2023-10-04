library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_business_settings/public_business_settings_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings.dart';

abstract class PublicBusinessSettingsApiInterface extends PlatformInterface {
  PublicBusinessSettingsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicBusinessSettingsApiInterface _instance = PublicBusinessSettingsApiFederated();

  static PublicBusinessSettingsApiInterface get instance => _instance;

  static set instance(PublicBusinessSettingsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicBusinessSettings>?> getPublicBusinessSettings() {
    throw UnimplementedError('getPublicBusinessSettings has not been implemented.');
  }

  Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    throw UnimplementedError('getPublicBusinessSettingsStream has not been implemented.');
  }

  static Future<Result<PublicBusinessSettings>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicBusinessSettings.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicBusinessSettings:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
