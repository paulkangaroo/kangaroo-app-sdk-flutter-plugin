// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_a_la_carte_products/public_ala_carte_products_platform_interface.dart';


class PublicAlaCarteProductsHandler extends PublicAlaCarteProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicAlaCarteProductsApiInterface.instance = PublicAlaCarteProductsHandler();
  }

  @override
  getPublicAlaCarteProducts() {
    PublicAlaCarteProductsApi().getPublicAlaCarteProducts();
  }

  @override
  Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    var controller = StreamController<String>();

    PublicAlaCarteProductsApi().observePublicAlaCarteProductsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicALaCarteProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicALaCarteProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.publicALaCarteProducts.PublicAlaCarteProductsApi')
class PublicAlaCarteProductsApi {
  external PublicAlaCarteProductsApi();

  external void getPublicAlaCarteProducts();

  external void observePublicAlaCarteProductsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

