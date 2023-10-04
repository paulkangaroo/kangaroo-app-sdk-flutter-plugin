import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/post_offer_facebook_share/offer_facebook_share_api_interface.dart';



class OfferFacebookShareApiFederated extends OfferFacebookShareApiInterface {
  @override
Future<Result<UserProfileModel>?> postOfferFacebookShare({ 
        required final String offerId,
        final String include = "balance",
        required final String facebookUserId,
        final String type = "facebook_share",
        final String friendsCount = "1"
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/post_offer_facebook_share',
    {
      'offerId' : offerId,
      'include' : include,
      'facebookUserId' : facebookUserId,
      'type' : type,
      'friendsCount' : friendsCount
    }
    );

    return OfferFacebookShareApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _offerFacebookShareEvent =
      const EventChannel("customer_sdk/events/post_offer_facebook_share");

  @override
  Stream<Result<UserProfileModel>> get offerFacebookShareStream {
    return _offerFacebookShareEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
