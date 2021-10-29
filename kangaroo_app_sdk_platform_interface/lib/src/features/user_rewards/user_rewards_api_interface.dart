library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
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

  getUserRewards() {
    throw UnimplementedError('getUserRewards has not been implemented.');
  }

  Stream<Result<UserRewardsModel>> get userRewardsStream {
    throw UnimplementedError('getUserRewardsStream has not been implemented.');
  }
}
