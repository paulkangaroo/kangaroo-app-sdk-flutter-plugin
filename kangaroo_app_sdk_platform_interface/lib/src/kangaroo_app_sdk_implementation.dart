import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';

import 'kangaroo_app_sdk_interface.dart';

class KangarooAppSdkFederated extends KangarooAppSdkInterface {
  @override
  initializeSdk({
    final String? applicationKey,
    final String? clientId,
    final String? clientSecret,
  }) {
    sdkMethodChannel.invokeMethod('core/methods/initializeSdk', {
      'applicationKey': applicationKey,
      'clientId': clientId,
      'clientSecret': clientSecret,
    });
  }
}
