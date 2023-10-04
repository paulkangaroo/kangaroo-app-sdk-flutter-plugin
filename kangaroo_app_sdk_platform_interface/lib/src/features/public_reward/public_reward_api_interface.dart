library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_reward/public_reward_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_reward_model.dart';

abstract class PublicRewardApiInterface extends PlatformInterface {
  PublicRewardApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicRewardApiInterface _instance = PublicRewardApiFederated();

  static PublicRewardApiInterface get instance => _instance;

  static set instance(PublicRewardApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PublicRewardModel>?> getPublicReward({ 
        required final String rewardSlug,
    }) {
    throw UnimplementedError('getPublicReward has not been implemented.');
  }

  Stream<Result<PublicRewardModel>> get publicRewardStream {
    throw UnimplementedError('getPublicRewardStream has not been implemented.');
  }

  static Future<Result<PublicRewardModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PublicRewardModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PublicRewardModel:
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
