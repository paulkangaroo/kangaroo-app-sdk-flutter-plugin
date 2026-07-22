// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/claim_offer/claim_offer_platform_interface.dart';


class ClaimOfferHandler extends ClaimOfferApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    ClaimOfferApiInterface.instance = ClaimOfferHandler();
  }

  @override
  claimOffer({ 
      final Map<String, String>? overrideHeaders,
        required final int offerId,
        required final String customerId
    }) {
    final Future<String?> request = ClaimOfferApi().claimOffer(
        jsonEncode(overrideHeaders),
        offerId,
      customerId
    ).toDart.then((value) => value?.toDart);

    return ClaimOfferApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<ClaimedOfferModel>> get claimOfferStream {
    var controller = StreamController<String>();

    ClaimOfferApi().observeClaimOfferState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = ClaimedOfferModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case ClaimedOfferModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.claimOffer.ClaimOfferApi')
extension type ClaimOfferApi._(JSObject _) implements JSObject {
  external factory ClaimOfferApi();

  external JSPromise<JSString?> claimOffer( 
        String? overrideHeaders, 
        int offerId,
        String customerId
    );

  external void observeClaimOfferState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

