library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_verification/user_account_verification_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_verification_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_verification_response_model.dart';

abstract class UserAccountVerificationApiInterface extends PlatformInterface {
  UserAccountVerificationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserAccountVerificationApiInterface _instance = UserAccountVerificationApiFederated();

  static UserAccountVerificationApiInterface get instance => _instance;

  static set instance(UserAccountVerificationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserVerificationResponseModel>?> verifyAccount({ 
        final Map<String, String>? overrideHeaders,
        required final String token,
        final String? email,
        final String? phone,
        final String? countryCode,
    }) {
    throw UnimplementedError('verifyAccount has not been implemented.');
  }

  Stream<Result<UserVerificationResponseModel>> get userAccountVerificationStream {
    throw UnimplementedError('getUserAccountVerificationStream has not been implemented.');
  }

  static Future<Result<UserVerificationResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserVerificationResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserVerificationResponseModel:
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
