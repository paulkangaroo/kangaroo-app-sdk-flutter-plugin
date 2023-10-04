library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_registration/user_registration_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

abstract class UserRegistrationApiInterface extends PlatformInterface {
  UserRegistrationApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserRegistrationApiInterface _instance = UserRegistrationApiFederated();

  static UserRegistrationApiInterface get instance => _instance;

  static set instance(UserRegistrationApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProfileDataModel>?> createAccount({ 
        final String? email,
        final String? phone,
        final String? countryCode,
        final String? language,
    }) {
    throw UnimplementedError('createAccount has not been implemented.');
  }

  Stream<Result<UserProfileDataModel>> get userRegistrationStream {
    throw UnimplementedError('getUserRegistrationStream has not been implemented.');
  }

  static Future<Result<UserProfileDataModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProfileDataModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProfileDataModel:
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
