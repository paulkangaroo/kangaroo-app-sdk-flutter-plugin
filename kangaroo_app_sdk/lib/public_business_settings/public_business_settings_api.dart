import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_business_settings/public_business_settings_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_business_settings/public_business_settings_platform_interface.dart';

class PublicBusinessSettingsApi {
  static Future<Result<PublicBusinessSettings>?> getPublicBusinessSettings() {
    return PublicBusinessSettingsApiInterface.instance.getPublicBusinessSettings();
  }

  static Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    return PublicBusinessSettingsApiInterface.instance.publicBusinessSettingsStream;
  }
}
