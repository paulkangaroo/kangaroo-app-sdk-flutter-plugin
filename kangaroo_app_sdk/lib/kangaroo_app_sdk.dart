import 'package:kangaroo_app_sdk_platform_interface/platform_interface/kangaroo_app_sdk_platform_interface.dart';

class KangarooAppSdk {
  static initializeSdk(
    String appId,
    String? firebaseAppCheckToken,
    String? firebaseAuthToken, {
    String? environment,
  }) {
    KangarooAppSdkInterface.instance.initializeSdk(
      appId: appId,
      environment: environment,
      firebaseAppCheckToken: firebaseAppCheckToken,
      firebaseAuthToken: firebaseAuthToken,
    );
  }

  static Future<String?> getPreferredLanguage() {
    return KangarooAppSdkInterface.instance.getPreferredLanguage();
  }

  static setPreferredLanguage(String preferredLanguage) {
    KangarooAppSdkInterface.instance.setPreferredLanguage(preferredLanguage);
  }

  static Future<String?> getSession() {
    return KangarooAppSdkInterface.instance.getSession();
  }

  static killSession() {
    KangarooAppSdkInterface.instance.killSession();
  }
}
