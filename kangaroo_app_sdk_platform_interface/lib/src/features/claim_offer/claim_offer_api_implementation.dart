import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/claim_offer/claim_offer_api_interface.dart';



class ClaimOfferApiFederated extends ClaimOfferApiInterface {
  @override
Future<Result<ClaimedOfferModel>?> claimOffer({ 
        required final int offerId,
        required final String customerId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/claim_offer',
    {
      'offerId' : offerId,
      'customerId' : customerId
    }
    );

    return ClaimOfferApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _claimOfferEvent =
      const EventChannel("customer_sdk/events/claim_offer");

  @override
  Stream<Result<ClaimedOfferModel>> get claimOfferStream {
    return _claimOfferEvent.receiveBroadcastStream().distinct().map((event) {
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
