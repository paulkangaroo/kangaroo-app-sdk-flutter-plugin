import 'package:kangaroo_app_sdk_platform_interface/platform_interface/kangaroo_app_sdk_platform_interface.dart';

class KangarooAppSdk {
  static initializeSdk(
    String applicationKey,
    String clientId,
    String clientSecret, {
    String preferredLanguage = "en",
  }) {
    KangarooAppSdkInterface.instance.initializeSdk(
      applicationKey: applicationKey,
      clientId: clientId,
      clientSecret: clientSecret,
      preferredLanguage: preferredLanguage,
    );
  }

  static Future<String> getPreferredLanguage() {
    return KangarooAppSdkInterface.instance.getPreferredLanguage();
  }

  static setPreferredLanguage(String preferredLanguage) {
    KangarooAppSdkInterface.instance.setPreferredLanguage(preferredLanguage);
  }

  static Future<String> getSession() {
    return KangarooAppSdkInterface.instance.getSession();
  }

  static killSession() {
    KangarooAppSdkInterface.instance.killSession();
  }
}
