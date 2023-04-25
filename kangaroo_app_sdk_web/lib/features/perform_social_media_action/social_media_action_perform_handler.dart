// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/perform_social_media_action/social_media_action_perform_platform_interface.dart';


class SocialMediaActionPerformHandler extends SocialMediaActionPerformApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    SocialMediaActionPerformApiInterface.instance = SocialMediaActionPerformHandler();
  }

  @override
  performSocialMediaAction({ 
        required final PerformSocialMediaActionRequestModel performSocialMediaActionRequest,
        required final String businessId
    }) {
    SocialMediaActionPerformApi().performSocialMediaAction(
      jsonEncode(performSocialMediaActionRequest),
      businessId
    );
  }

  @override
  Stream<Result<PerformSocialMediaActionResponseModel>> get socialMediaActionPerformStream {
    var controller = StreamController<String>();

    SocialMediaActionPerformApi().observeSocialMediaActionPerformState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.performSocialMediaAction.SocialMediaActionPerformApi')
class SocialMediaActionPerformApi {
  external SocialMediaActionPerformApi();

  external void performSocialMediaAction( 
        String performSocialMediaActionRequest,
        String businessId
    );

  external void observeSocialMediaActionPerformState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

