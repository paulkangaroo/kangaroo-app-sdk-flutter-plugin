// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_ala_carte_products/user_business_ala_carte_products_platform_interface.dart';


class UserBusinessAlaCarteProductsHandler extends UserBusinessAlaCarteProductsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessAlaCarteProductsApiInterface.instance = UserBusinessAlaCarteProductsHandler();
  }

  @override
  getUserBusinessAlaCarteProducts({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessAlaCarteProductsApi().getUserBusinessAlaCarteProducts(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessAlaCarteProductsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<AlaCarteProductsModel>> get userBusinessAlaCarteProductsStream {
    var controller = StreamController<String>();

    UserBusinessAlaCarteProductsApi().observeUserBusinessAlaCarteProductsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.userBusinessAlaCarteProducts.UserBusinessAlaCarteProductsApi')
extension type UserBusinessAlaCarteProductsApi._(JSObject _) implements JSObject {
  external factory UserBusinessAlaCarteProductsApi();

  external JSPromise<JSString?> getUserBusinessAlaCarteProducts( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessAlaCarteProductsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

