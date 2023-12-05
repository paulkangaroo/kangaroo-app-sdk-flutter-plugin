import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_banners/public_banners_api_interface.dart';



class PublicBannersApiFederated extends PublicBannersApiInterface {
  @override
Future<Result<BannersModel>?> getPublicBanners() async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_banners');

    return PublicBannersApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicBannersEvent =
      const EventChannel("customer_sdk/events/get_public_banners");

  @override
  Stream<Result<BannersModel>> get publicBannersStream {
    return _publicBannersEvent.receiveBroadcastStream().distinct().map((event) {
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
