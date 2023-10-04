library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/redeem_reward/redeem_rewards_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_response_model.dart';

abstract class RedeemRewardsApiInterface extends PlatformInterface {
  RedeemRewardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static RedeemRewardsApiInterface _instance = RedeemRewardsApiFederated();

  static RedeemRewardsApiInterface get instance => _instance;

  static set instance(RedeemRewardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<RedeemResponseModel>?> redeemReward({ 
        required final RedeemRequest redeemRequest,
    }) {
    throw UnimplementedError('redeemReward has not been implemented.');
  }

  Stream<Result<RedeemResponseModel>> get redeemRewardsStream {
    throw UnimplementedError('getRedeemRewardsStream has not been implemented.');
  }

  static Future<Result<RedeemResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = RedeemResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case RedeemResponseModel:
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
