// ignore_for_file: implementation_imports

// @JS('KangarooAppSDK-kangaroo-app-sdk-customer')
@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:js_interop';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/kangaroo_app_sdk_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'base/plugin_channel_handler.dart';
import 'features/plugin_handler_list.dart';

/// A web implementation of the sdk_wrapper_federated plugin.
class KangarooAppSDKWebFlutterPlugin extends PlatformInterface {
  KangarooAppSDKWebFlutterPlugin() : super(token: _token);

  static final Object _token = Object();

  static set instance(KangarooAppSDKWebFlutterPlugin instance) {
    PlatformInterface.verifyToken(instance, _token);
  }

  static void registerWith(Registrar? registrar) {
    pluginHandlerList.forEach((pluginHandler) {
      pluginHandler.registerPluginHandler();
    });
    KangarooAppSdkHandler().registerPluginHandler();
  }
}

class KangarooAppSdkHandler extends KangarooAppSdkInterface
    implements PluginChannelHandler {
  @override
  void registerPluginHandler() {
    KangarooAppSdkInterface.instance = KangarooAppSdkHandler();
  }

  @override
  initializeSdk({
    final String? applicationKey,
    final String? clientId,
    final String? clientSecret,
    final String? environment = "production",
    final String? baseURL,
  }) {
    KangarooSdk().initialize(
      applicationKey,
      clientId,
      clientSecret,
      environment,
      baseURL,
    );
  }

  @override
  Future<String?> getSession() {
    return KangarooSdk().getSession().toDart.then((value) => value?.toDart);
  }

  @override
  killSession() {
    KangarooSdk().killSession();
  }

  @override
  Future<String?> getPreferredLanguage() {
    return KangarooSdk()
        .getPreferredLanguage()
        .toDart
        .then((value) => value?.toDart);
  }

  @override
  setPreferredLanguage(String preferredLanguage) {
    KangarooSdk().setPreferredLanguage(preferredLanguage);
  }
}

@JS('kangaroorewards.js.appsdk.KangarooSdk')
extension type KangarooSdk._(JSObject _) implements JSObject {
  external factory KangarooSdk();

  external void initialize(String? applicationKey, String? clientId,
      String? clientSecret, String? environment, String? baseURL);

  external JSPromise<JSString?> getSession();

  external void killSession();

  external JSPromise<JSString?> getPreferredLanguage();

  external void setPreferredLanguage(String? preferredLanguage);
}
