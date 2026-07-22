// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getPublicProducts({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = PublicProductsApi().getPublicProducts(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return PublicProductsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicProductsModel>> get publicProductsStream {
    var controller = StreamController<String>();

    PublicProductsApi().observePublicProductsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.publicProducts.PublicProductsApi')
extension type PublicProductsApi._(JSObject _) implements JSObject {
  external factory PublicProductsApi();

  external JSPromise<JSString?> getPublicProducts( 
        String? overrideHeaders, 

    );

  external void observePublicProductsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

