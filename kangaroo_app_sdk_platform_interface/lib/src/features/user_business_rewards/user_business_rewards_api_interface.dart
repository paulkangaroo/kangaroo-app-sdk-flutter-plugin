library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_rewards/user_business_rewards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_rewards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_rewards_model.dart';

abstract class UserBusinessRewardsApiInterface extends PlatformInterface {
  UserBusinessRewardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessRewardsApiInterface _instance = UserBusinessRewardsApiFederated();

  static UserBusinessRewardsApiInterface get instance => _instance;

  static set instance(UserBusinessRewardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserBusinessRewards({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessRewards has not been implemented.');
  }

  Stream<Result<UserBusinessRewardsModel>> get userBusinessRewardsStream {
    throw UnimplementedError('getUserBusinessRewardsStream has not been implemented.');
  }
}
