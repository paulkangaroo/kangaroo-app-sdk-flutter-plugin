// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offer/public_offer_platform_interface.dart';


class PublicOfferHandler extends PublicOfferApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicOfferApiInterface.instance = PublicOfferHandler();
  }

  @override
  getPublicOffer({ 
      final Map<String, String>? overrideHeaders,
        required final String offerSlug
    }) {
    final Future<String?> request = PublicOfferApi().getPublicOffer(
        jsonEncode(overrideHeaders),
        offerSlug
    ).toDart.then((value) => value?.toDart);

    return PublicOfferApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicOfferResponseModel>> get publicOfferStream {
    var controller = StreamController<String>();

    PublicOfferApi().observePublicOfferState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicOfferResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicOfferResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicOffer.PublicOfferApi')
extension type PublicOfferApi._(JSObject _) implements JSObject {
  external factory PublicOfferApi();

  external JSPromise<JSString?> getPublicOffer( 
        String? overrideHeaders, 
        String offerSlug
    );

  external void observePublicOfferState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

