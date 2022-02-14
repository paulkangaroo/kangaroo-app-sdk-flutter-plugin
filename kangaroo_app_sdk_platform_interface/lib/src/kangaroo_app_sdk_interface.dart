library kangaroo_app_sdk_platform_interface;

import 'package:kangaroo_app_sdk_platform_interface/src/kangaroo_app_sdk_implementation.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class KangarooAppSdkInterface extends PlatformInterface {
  KangarooAppSdkInterface() : super(token: _token);

  static final Object _token = Object();

  static KangarooAppSdkInterface _instance = KangarooAppSdkFederated();

  static KangarooAppSdkInterface get instance => _instance;

  static set instance(KangarooAppSdkInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  initializeSdk({
    final String? applicationKey,
    final String? clientId,
    final String? clientSecret,
  }) {
    throw UnimplementedError('initialize sdk has not been implemented.');
  }

  Future<String?> getSession();

  killSession();

  Future<String?> getPreferredLanguage();

  setPreferredLanguage(String preferredLanguage);
}
