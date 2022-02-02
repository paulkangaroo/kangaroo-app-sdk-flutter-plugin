// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/tiers/tiers_platform_interface.dart';


class TiersHandler extends TiersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    TiersApiInterface.instance = TiersHandler();
  }

  @override
  getTiers() {
    TiersApi().getTiers();
  }

  @override
  Stream<Result<UserProfileWithTierProgram>> get tiersStream {
    var controller = StreamController<String>();

    TiersApi().observeTiersState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileWithTierProgram.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileWithTierProgram:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.tiers.TiersApi')
class TiersApi {
  external TiersApi();

  external void getTiers();

  external void observeTiersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}
