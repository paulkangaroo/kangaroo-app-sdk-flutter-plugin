library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_profile/user_business_profile_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_profile_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_profile_model.dart';

abstract class UserBusinessProfileApiInterface extends PlatformInterface {
  UserBusinessProfileApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessProfileApiInterface _instance = UserBusinessProfileApiFederated();

  static UserBusinessProfileApiInterface get instance => _instance;

  static set instance(UserBusinessProfileApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserBusinessProfileModel>?> getUserBusinessProfile({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessProfile has not been implemented.');
  }

  Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    throw UnimplementedError('getUserBusinessProfileStream has not been implemented.');
  }

  static Future<Result<UserBusinessProfileModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessProfileModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessProfileModel:
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
