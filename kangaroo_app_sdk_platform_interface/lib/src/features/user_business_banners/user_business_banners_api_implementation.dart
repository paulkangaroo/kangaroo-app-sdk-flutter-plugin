import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_banners/user_business_banners_api_interface.dart';



class UserBusinessBannersApiFederated extends UserBusinessBannersApiInterface {
  @override
  getUserBusinessBanners({ 
        required final String businessId
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_banners',
    {
      'businessId' : businessId
    }
    );
  }

  static const EventChannel _userBusinessBannersEvent =
      const EventChannel("customer_sdk/events/get_user_business_banners");

  @override
  Stream<Result<UserBusinessBannersModel>> get userBusinessBannersStream {
    return _userBusinessBannersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessBannersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessBannersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
