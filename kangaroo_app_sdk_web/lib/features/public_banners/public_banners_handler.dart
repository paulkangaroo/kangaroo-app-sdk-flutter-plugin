// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_banners/public_banners_platform_interface.dart';


class PublicBannersHandler extends PublicBannersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicBannersApiInterface.instance = PublicBannersHandler();
  }

  @override
  getPublicBanners() {
    PublicBannersApi().getPublicBanners();
  }

  @override
  Stream<Result<BannersModel>> get publicBannersStream {
    var controller = StreamController<String>();

    PublicBannersApi().observePublicBannersState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = BannersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case BannersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.publicBanners.PublicBannersApi')
class PublicBannersApi {
  external PublicBannersApi();

  external void getPublicBanners();

  external void observePublicBannersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}
