// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_social_media_links/user_business_social_media_links_platform_interface.dart';


class UserBusinessSocialMediaLinksHandler extends UserBusinessSocialMediaLinksApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessSocialMediaLinksApiInterface.instance = UserBusinessSocialMediaLinksHandler();
  }

  @override
  getUserBusinessSocialMediaLinks({ 
        required final String businessId
    }) {
    UserBusinessSocialMediaLinksApi().getUserBusinessSocialMediaLinks(
      businessId
    );
  }

  @override
  Stream<Result<SocialMediaLinksModel>> get userBusinessSocialMediaLinksStream {
    var controller = StreamController<String>();

    UserBusinessSocialMediaLinksApi().observeUserBusinessSocialMediaLinksState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('js.features.userBusinessSocialMediaLinks.UserBusinessSocialMediaLinksApi')
class UserBusinessSocialMediaLinksApi {
  external UserBusinessSocialMediaLinksApi();

  external void getUserBusinessSocialMediaLinks( 
        String businessId
    );

  external void observeUserBusinessSocialMediaLinksState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

