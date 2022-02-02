library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/tiers/tiers_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_with_tier_program.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_with_tier_program.dart';

abstract class TiersApiInterface extends PlatformInterface {
  TiersApiInterface() : super(token: _token);

  static final Object _token = Object();

  static TiersApiInterface _instance = TiersApiFederated();

  static TiersApiInterface get instance => _instance;

  static set instance(TiersApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getTiers() {
    throw UnimplementedError('getTiers has not been implemented.');
  }

  Stream<Result<UserProfileWithTierProgram>> get tiersStream {
    throw UnimplementedError('getTiersStream has not been implemented.');
  }
}
