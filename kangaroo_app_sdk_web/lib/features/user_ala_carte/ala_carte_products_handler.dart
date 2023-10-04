// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_ala_carte/ala_carte_products_platform_interface.dart';


class AlaCarteProductsHandler extends AlaCarteProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    AlaCarteProductsApiInterface.instance = AlaCarteProductsHandler();
  }

  @override
  getAlaCarteProducts() {
    final Future<String?> request = promiseToFuture<String?>(
        AlaCarteProductsApi().getAlaCarteProducts());

    return AlaCarteProductsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<AlaCarteProductsModel>> get alaCarteProductsStream {
    var controller = StreamController<String>();

    AlaCarteProductsApi().observeAlaCarteProductsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = AlaCarteProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case AlaCarteProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userAlaCarte.AlaCarteProductsApi')
class AlaCarteProductsApi {
  external AlaCarteProductsApi();

  external dynamic getAlaCarteProducts();

  external void observeAlaCarteProductsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

