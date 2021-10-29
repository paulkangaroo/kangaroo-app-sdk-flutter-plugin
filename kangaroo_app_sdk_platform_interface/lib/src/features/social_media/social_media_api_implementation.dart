import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/social_media/social_media_api_interface.dart';



class SocialMediaApiFederated extends SocialMediaApiInterface {
  @override
  getSocialMedia() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_social_media');
  }

  static const EventChannel _socialMediaEvent =
      const EventChannel("customer_sdk/events/get_social_media");

  @override
  Stream<Result<SocialMediaModel>> get socialMediaStream {
    return _socialMediaEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = SocialMediaModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case SocialMediaModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
