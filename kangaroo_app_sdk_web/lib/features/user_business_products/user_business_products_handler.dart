// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_products/user_business_products_platform_interface.dart';


class UserBusinessProductsHandler extends UserBusinessProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessProductsApiInterface.instance = UserBusinessProductsHandler();
  }

  @override
  getUserBusinessProducts({ 
        required final String businessId
    }) {
    UserBusinessProductsApi().getUserBusinessProducts(
      businessId
    );
  }

  @override
  Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    var controller = StreamController<String>();

    UserBusinessProductsApi().observeUserBusinessProductsState(
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

@JS('js.features.userBusinessProducts.UserBusinessProductsApi')
class UserBusinessProductsApi {
  external UserBusinessProductsApi();

  external void getUserBusinessProducts( 
        String businessId
    );

  external void observeUserBusinessProductsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

