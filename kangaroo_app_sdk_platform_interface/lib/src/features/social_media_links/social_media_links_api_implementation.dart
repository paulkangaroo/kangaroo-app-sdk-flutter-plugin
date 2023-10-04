import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/social_media_links/social_media_links_api_interface.dart';



class SocialMediaLinksApiFederated extends SocialMediaLinksApiInterface {
  @override
Future<Result<SocialMediaLinksModel>?> getSocialMediaLinks() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_social_media_links');

    return SocialMediaLinksApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _socialMediaLinksEvent =
      const EventChannel("customer_sdk/events/get_social_media_links");

  @override
  Stream<Result<SocialMediaLinksModel>> get socialMediaLinksStream {
    return _socialMediaLinksEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = SocialMediaLinksModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case SocialMediaLinksModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
