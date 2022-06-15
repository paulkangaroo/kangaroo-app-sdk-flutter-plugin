library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_rewards/public_rewards_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_rewards_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_rewards_model.dart';

abstract class PublicRewardsApiInterface extends PlatformInterface {
  PublicRewardsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicRewardsApiInterface _instance = PublicRewardsApiFederated();

  static PublicRewardsApiInterface get instance => _instance;

  static set instance(PublicRewardsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicRewards() {
    throw UnimplementedError('getPublicRewards has not been implemented.');
  }

  Stream<Result<PublicRewardsModel>> get publicRewardsStream {
    throw UnimplementedError('getPublicRewardsStream has not been implemented.');
  }
}
