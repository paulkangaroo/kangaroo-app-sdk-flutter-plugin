// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
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
        required final int offerId,
        required final String customerId
    }) {
    ClaimOfferApi().claimOffer(
      offerId,
      customerId
    );
  }

  @override
  Stream<Result<ClaimedOfferModel>> get claimOfferStream {
    var controller = StreamController<String>();

    ClaimOfferApi().observeClaimOfferState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class ClaimOfferApi {
  external ClaimOfferApi();

  external void claimOffer( 
        int offerId,
        String customerId
    );

  external void observeClaimOfferState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

