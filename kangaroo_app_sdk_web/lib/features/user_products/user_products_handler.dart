// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_products/user_products_platform_interface.dart';


class UserProductsHandler extends UserProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserProductsApiInterface.instance = UserProductsHandler();
  }

  @override
  getUserProducts() {
    UserProductsApi().getUserProducts();
  }

  @override
  Stream<Result<UserProductsModel>> get userProductsStream {
    var controller = StreamController<String>();

    UserProductsApi().observeUserProductsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userProducts.UserProductsApi')
class UserProductsApi {
  external UserProductsApi();

  external void getUserProducts();

  external void observeUserProductsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

