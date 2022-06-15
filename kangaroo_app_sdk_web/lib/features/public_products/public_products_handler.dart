// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_products/public_products_platform_interface.dart';


class PublicProductsHandler extends PublicProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicProductsApiInterface.instance = PublicProductsHandler();
  }

  @override
  getPublicProducts() {
    PublicProductsApi().getPublicProducts();
  }

  @override
  Stream<Result<PublicProductsModel>> get publicProductsStream {
    var controller = StreamController<String>();

    PublicProductsApi().observePublicProductsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.publicProducts.PublicProductsApi')
class PublicProductsApi {
  external PublicProductsApi();

  external void getPublicProducts();

  external void observePublicProductsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

