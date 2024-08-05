import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/tiers/tiers_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/tiers/tiers_platform_interface.dart';

class TiersApi {
  static Future<Result<UserProfileWithTierProgram>?> getTiers({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return TiersApiInterface.instance.getTiers( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<UserProfileWithTierProgram>> get tiersStream {
    return TiersApiInterface.instance.tiersStream;
  }
}
