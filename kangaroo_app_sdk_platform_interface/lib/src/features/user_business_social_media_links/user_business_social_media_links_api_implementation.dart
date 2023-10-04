import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_social_media_links/user_business_social_media_links_api_interface.dart';



class UserBusinessSocialMediaLinksApiFederated extends UserBusinessSocialMediaLinksApiInterface {
  @override
Future<Result<SocialMediaLinksModel>?> getUserBusinessSocialMediaLinks({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_social_media_links',
    {
      'businessId' : businessId
    }
    );

    return UserBusinessSocialMediaLinksApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessSocialMediaLinksEvent =
      const EventChannel("customer_sdk/events/get_user_business_social_media_links");

  @override
  Stream<Result<SocialMediaLinksModel>> get userBusinessSocialMediaLinksStream {
    return _userBusinessSocialMediaLinksEvent.receiveBroadcastStream().distinct().map((event) {
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
