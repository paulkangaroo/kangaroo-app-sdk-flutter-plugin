library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_rewards/user_rewards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_rewards_model.dart';

abstract class UserRewardsApiInterface extends PlatformInterface {
  UserRewardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserRewardsApiInterface _instance = UserRewardsApiFederated();

  static UserRewardsApiInterface get instance => _instance;

  static set instance(UserRewardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserRewardsModel>?> getUserRewards() {
    throw UnimplementedError('getUserRewards has not been implemented.');
  }

  Stream<Result<UserRewardsModel>> get userRewardsStream {
    throw UnimplementedError('getUserRewardsStream has not been implemented.');
  }

  static Future<Result<UserRewardsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserRewardsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserRewardsModel:
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
