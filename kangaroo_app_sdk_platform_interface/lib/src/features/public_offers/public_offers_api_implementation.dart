import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_offers/public_offers_api_interface.dart';



class PublicOffersApiFederated extends PublicOffersApiInterface {
  @override
Future<Result<UserOffersModel>?> getPublicOffers() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_offers');

    return PublicOffersApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicOffersEvent =
      const EventChannel("customer_sdk/events/get_public_offers");

  @override
  Stream<Result<UserOffersModel>> get publicOffersStream {
    return _publicOffersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
