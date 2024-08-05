import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';

import 'kangaroo_app_sdk_interface.dart';

class KangarooAppSdkFederated extends KangarooAppSdkInterface {
  @override
  initializeSdk({
    final String? applicationKey,
    final String? clientId,
    final String? clientSecret,
    final String? environment,
    final String? baseURL,
  }) {
    sdkMethodChannel.invokeMethod('core/methods/initializeSdk', {
      'applicationKey': applicationKey,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'environment': environment,
      'baseURL': baseURL,
    });
  }

  @override
  Future<String?> getSession() async {
    return await sdkMethodChannel.invokeMethod('core/methods/getSession');
  }

  @override
  killSession() {
    sdkMethodChannel.invokeMethod('core/methods/killSession');
  }

  @override
  setPreferredLanguage(String preferredLanguage) {
    sdkMethodChannel.invokeMethod('core/methods/setPreferredLanguage', {
      'preferredLanguage': preferredLanguage,
    });
  }

  @override
  Future<String?> getPreferredLanguage() async {
    return await sdkMethodChannel
        .invokeMethod('core/methods/getPreferredLanguage');
  }
}
