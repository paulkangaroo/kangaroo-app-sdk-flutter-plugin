library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_request/user_pin_reset_request_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_pin_reset_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_pin_reset_request.dart';

abstract class UserPinResetRequestApiInterface extends PlatformInterface {
  UserPinResetRequestApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserPinResetRequestApiInterface _instance = UserPinResetRequestApiFederated();

  static UserPinResetRequestApiInterface get instance => _instance;

  static set instance(UserPinResetRequestApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserPinResetRequest>?> requestPinReset({ 
        final String mode = "verification_code",
        final String? email,
        final String? phone,
        final String? countryCode,
    }) {
    throw UnimplementedError('requestPinReset has not been implemented.');
  }

  Stream<Result<UserPinResetRequest>> get userPinResetRequestStream {
    throw UnimplementedError('getUserPinResetRequestStream has not been implemented.');
  }

  static Future<Result<UserPinResetRequest>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserPinResetRequest.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserPinResetRequest:
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
