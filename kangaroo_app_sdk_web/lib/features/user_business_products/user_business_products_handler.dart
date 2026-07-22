// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessProductsApi().getUserBusinessProducts(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessProductsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    var controller = StreamController<String>();

    UserBusinessProductsApi().observeUserBusinessProductsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type UserBusinessProductsApi._(JSObject _) implements JSObject {
  external factory UserBusinessProductsApi();

  external JSPromise<JSString?> getUserBusinessProducts( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessProductsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

