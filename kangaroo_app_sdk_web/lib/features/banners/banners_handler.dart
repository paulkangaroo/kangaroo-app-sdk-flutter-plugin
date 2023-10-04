// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/banners/banners_platform_interface.dart';


class BannersHandler extends BannersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    BannersApiInterface.instance = BannersHandler();
  }

  @override
  getBanners() {
    final Future<String?> request = promiseToFuture<String?>(
        BannersApi().getBanners());

    return BannersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<BannersModel>> get bannersStream {
    var controller = StreamController<String>();

    BannersApi().observeBannersState(
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

@JS('js.features.banners.BannersApi')
class BannersApi {
  external BannersApi();

  external dynamic getBanners();

  external void observeBannersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

