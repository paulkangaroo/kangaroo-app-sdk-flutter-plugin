library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_tiers/user_business_tiers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_with_tier_program.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_with_tier_program.dart';

abstract class UserBusinessTiersApiInterface extends PlatformInterface {
  UserBusinessTiersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessTiersApiInterface _instance = UserBusinessTiersApiFederated();

  static UserBusinessTiersApiInterface get instance => _instance;

  static set instance(UserBusinessTiersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserProfileWithTierProgram>?> getUserBusinessTiers({ 
        required final String memberBusinessId,
    }) {
    throw UnimplementedError('getUserBusinessTiers has not been implemented.');
  }

  Stream<Result<UserProfileWithTierProgram>> get userBusinessTiersStream {
    throw UnimplementedError('getUserBusinessTiersStream has not been implemented.');
  }

  static Future<Result<UserProfileWithTierProgram>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserProfileWithTierProgram.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserProfileWithTierProgram:
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
