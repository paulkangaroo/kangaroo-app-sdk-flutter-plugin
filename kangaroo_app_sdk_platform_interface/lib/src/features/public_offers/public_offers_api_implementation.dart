import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_offers/public_offers_api_interface.dart';



class PublicOffersApiFederated extends PublicOffersApiInterface {
  @override
Future<Result<PublicOffersModel>?> getPublicOffers({ 
        final Map<String, String>? overrideHeaders,

    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_offers');

    return PublicOffersApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicOffersEvent =
      const EventChannel("customer_sdk/events/get_public_offers");

  @override
  Stream<Result<PublicOffersModel>> get publicOffersStream {
    return _publicOffersEvent.receiveBroadcastStream().distinct().map((event) {
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
