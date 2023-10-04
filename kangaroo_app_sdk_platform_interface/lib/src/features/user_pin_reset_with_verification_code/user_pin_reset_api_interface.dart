library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_pin_reset_with_verification_code/user_pin_reset_api_implementation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';


abstract class UserPinResetApiInterface extends PlatformInterface {
  UserPinResetApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserPinResetApiInterface _instance = UserPinResetApiFederated();

  static UserPinResetApiInterface get instance => _instance;

  static set instance(UserPinResetApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<EmptyResponse>?> resetPin({ 
        required final String verificationCode,
        required final String pinCode,
        final String? email,
        final String? phone,
        final String? countryCode,
    }) {
    throw UnimplementedError('resetPin has not been implemented.');
  }

  Stream<Result<EmptyResponse>> get userPinResetStream {
    throw UnimplementedError('getUserPinResetStream has not been implemented.');
  }

  static Future<Result<EmptyResponse>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
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
