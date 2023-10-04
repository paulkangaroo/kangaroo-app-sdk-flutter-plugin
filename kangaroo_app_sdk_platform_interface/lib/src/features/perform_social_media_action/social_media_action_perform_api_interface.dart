library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/perform_social_media_action/social_media_action_perform_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_social_media_action_request_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_social_media_action_request_model.dart';


import 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_social_media_action_response_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/perform_social_media_action_response_model.dart';

abstract class SocialMediaActionPerformApiInterface extends PlatformInterface {
  SocialMediaActionPerformApiInterface() : super(token: _token);

  static final Object _token = Object();

  static SocialMediaActionPerformApiInterface _instance = SocialMediaActionPerformApiFederated();

  static SocialMediaActionPerformApiInterface get instance => _instance;

  static set instance(SocialMediaActionPerformApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<PerformSocialMediaActionResponseModel>?> performSocialMediaAction({ 
        required final PerformSocialMediaActionRequestModel performSocialMediaActionRequest,
        required final String businessId,
    }) {
    throw UnimplementedError('performSocialMediaAction has not been implemented.');
  }

  Stream<Result<PerformSocialMediaActionResponseModel>> get socialMediaActionPerformStream {
    throw UnimplementedError('getSocialMediaActionPerformStream has not been implemented.');
  }

  static Future<Result<PerformSocialMediaActionResponseModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = PerformSocialMediaActionResponseModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case PerformSocialMediaActionResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
