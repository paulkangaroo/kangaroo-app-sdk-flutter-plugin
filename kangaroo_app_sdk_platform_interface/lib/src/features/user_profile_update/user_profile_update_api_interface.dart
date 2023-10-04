library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_profile_update/user_profile_update_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_model.dart';

abstract class UserProfileUpdateApiInterface extends PlatformInterface {
  UserProfileUpdateApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserProfileUpdateApiInterface _instance = UserProfileUpdateApiFederated();

  static UserProfileUpdateApiInterface get instance => _instance;

  static set instance(UserProfileUpdateApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProfileModel>?> updateUserProfile({ 
        final String? firstName,
        final String? lastName,
        final String? birthDate,
        final String? language,
        final String? gender,
        final String? profilePhoto,
    }) {
    throw UnimplementedError('updateUserProfile has not been implemented.');
  }

  Stream<Result<UserProfileModel>> get userProfileUpdateStream {
    throw UnimplementedError('getUserProfileUpdateStream has not been implemented.');
  }

  static Future<Result<UserProfileModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
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
