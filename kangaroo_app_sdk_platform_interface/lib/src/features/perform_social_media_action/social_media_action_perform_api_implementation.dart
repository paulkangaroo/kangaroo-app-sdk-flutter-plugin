import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/perform_social_media_action/social_media_action_perform_api_interface.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_social_media_action_request_model.dart';


class SocialMediaActionPerformApiFederated extends SocialMediaActionPerformApiInterface {
  @override
Future<Result<PerformSocialMediaActionResponseModel>?> performSocialMediaAction({ 
        required final PerformSocialMediaActionRequestModel performSocialMediaActionRequest,
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/perform_social_media_action',
    {
      'performSocialMediaActionRequest' : jsonEncode(performSocialMediaActionRequest),
      'businessId' : businessId
    }
    );

    return SocialMediaActionPerformApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _socialMediaActionPerformEvent =
      const EventChannel("customer_sdk/events/perform_social_media_action");

  @override
  Stream<Result<PerformSocialMediaActionResponseModel>> get socialMediaActionPerformStream {
    return _socialMediaActionPerformEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PerformSocialMediaActionResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PerformSocialMediaActionResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
