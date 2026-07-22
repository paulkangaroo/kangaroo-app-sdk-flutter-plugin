// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getPublicAlaCarteProducts({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = PublicAlaCarteProductsApi().getPublicAlaCarteProducts(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return PublicAlaCarteProductsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    var controller = StreamController<String>();

    PublicAlaCarteProductsApi().observePublicAlaCarteProductsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.publicALaCarteProducts.PublicAlaCarteProductsApi')
extension type PublicAlaCarteProductsApi._(JSObject _) implements JSObject {
  external factory PublicAlaCarteProductsApi();

  external JSPromise<JSString?> getPublicAlaCarteProducts( 
        String? overrideHeaders, 

    );

  external void observePublicAlaCarteProductsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

