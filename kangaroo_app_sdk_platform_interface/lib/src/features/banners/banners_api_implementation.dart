import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/banners/banners_api_interface.dart';



class BannersApiFederated extends BannersApiInterface {
  @override
  getBanners() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_banners');
  }

  static const EventChannel _bannersEvent =
      const EventChannel("customer_sdk/events/get_banners");

  @override
  Stream<Result<BannersModel>> get bannersStream {
    return _bannersEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = BannersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case BannersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
