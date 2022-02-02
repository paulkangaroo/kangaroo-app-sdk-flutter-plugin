import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/tiers/tiers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/tiers/tiers_platform_interface.dart';

class TiersApi {
  static getTiers() {
    TiersApiInterface.instance.getTiers();
  }

  static Stream<Result<UserProfileWithTierProgram>> get tiersStream {
    return TiersApiInterface.instance.tiersStream;
  }
}
