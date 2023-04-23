// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media_links/social_media_links_platform_interface.dart';


class SocialMediaLinksHandler extends SocialMediaLinksApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    SocialMediaLinksApiInterface.instance = SocialMediaLinksHandler();
  }

  @override
  getSocialMediaLinks() {
    SocialMediaLinksApi().getSocialMediaLinks();
  }

  @override
  Stream<Result<SocialMediaLinksModel>> get socialMediaLinksStream {
    var controller = StreamController<String>();

    SocialMediaLinksApi().observeSocialMediaLinksState(
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

@JS('js.features.socialMediaLinks.SocialMediaLinksApi')
class SocialMediaLinksApi {
  external SocialMediaLinksApi();

  external void getSocialMediaLinks();

  external void observeSocialMediaLinksState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

