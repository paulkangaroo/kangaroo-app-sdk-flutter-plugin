import 'package:kangaroo_app_sdk_platform_interface/platform_interface/kangaroo_app_sdk_platform_interface.dart';

class KangarooAppSdk {
  static initializeSdk(
    String applicationKey,
    String clientId,
    String clientSecret,
  ) {
    KangarooAppSdkInterface.instance.initializeSdk(
      applicationKey: applicationKey,
      clientId: clientId,
      clientSecret: clientSecret,
    );
  }
}
