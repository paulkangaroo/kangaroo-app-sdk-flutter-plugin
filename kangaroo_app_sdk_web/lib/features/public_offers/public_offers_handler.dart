// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';


class PublicOffersHandler extends PublicOffersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicOffersApiInterface.instance = PublicOffersHandler();
  }

  @override
  getPublicOffers({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = PublicOffersApi().getPublicOffers(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return PublicOffersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicOffersModel>> get publicOffersStream {
    var controller = StreamController<String>();

    PublicOffersApi().observePublicOffersState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicOffers.PublicOffersApi')
extension type PublicOffersApi._(JSObject _) implements JSObject {
  external factory PublicOffersApi();

  external JSPromise<JSString?> getPublicOffers( 
        String? overrideHeaders, 

    );

  external void observePublicOffersState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

