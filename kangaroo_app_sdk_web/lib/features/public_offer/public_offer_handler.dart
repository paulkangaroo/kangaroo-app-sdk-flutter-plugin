// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
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
        required final String offerSlug
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        PublicOfferApi().getPublicOffer(
        offerSlug
    ),);

    return PublicOfferApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicOfferModel>> get publicOfferStream {
    var controller = StreamController<String>();

    PublicOfferApi().observePublicOfferState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicOfferModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicOfferModel:
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
class PublicOfferApi {
  external PublicOfferApi();

  external dynamic getPublicOffer( 
        String offerSlug
    );

  external void observePublicOfferState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

