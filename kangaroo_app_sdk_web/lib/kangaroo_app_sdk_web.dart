@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:js/js.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'features/plugin_handler_list.dart';

/// A web implementation of the sdk_wrapper_federated plugin.
class KangarooAppSDKWebFlutterPlugin extends PlatformInterface {
  KangarooAppSDKWebFlutterPlugin() : super(token: _token);

  static final Object _token = Object();

  static set instance(KangarooAppSDKWebFlutterPlugin instance) {
    PlatformInterface.verifyToken(instance, _token);
  }

  static void registerWith(Registrar? registrar) {
    KangarooSdk().initialize();
    pluginHandlerList.forEach((pluginHandler) {
      pluginHandler.registerPluginHandler();
    });
  }
}

@JS('kangaroorewards.js.appsdk.KangarooSdk')
class KangarooSdk {
  external void initialize();
}
