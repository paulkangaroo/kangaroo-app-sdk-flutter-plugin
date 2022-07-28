library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_business_settings/public_business_settings_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings.dart';

abstract class PublicBusinessSettingsApiInterface extends PlatformInterface {
  PublicBusinessSettingsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static PublicBusinessSettingsApiInterface _instance = PublicBusinessSettingsApiFederated();

  static PublicBusinessSettingsApiInterface get instance => _instance;

  static set instance(PublicBusinessSettingsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getPublicBusinessSettings() {
    throw UnimplementedError('getPublicBusinessSettings has not been implemented.');
  }

  Stream<Result<PublicBusinessSettings>> get publicBusinessSettingsStream {
    throw UnimplementedError('getPublicBusinessSettingsStream has not been implemented.');
  }
}
