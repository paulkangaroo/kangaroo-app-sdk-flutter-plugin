import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_gift_cards/user_business_gift_cards_api_interface.dart';



class UserBusinessGiftCardsApiFederated extends UserBusinessGiftCardsApiInterface {
  @override
Future<Result<UserBusinessGiftCardsModel>?> getUserBusinessGiftCards({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_gift_cards',
    {
      'businessId' : businessId
    }
    );

    return UserBusinessGiftCardsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessGiftCardsEvent =
      const EventChannel("customer_sdk/events/get_user_business_gift_cards");

  @override
  Stream<Result<UserBusinessGiftCardsModel>> get userBusinessGiftCardsStream {
    return _userBusinessGiftCardsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessGiftCardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessGiftCardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
