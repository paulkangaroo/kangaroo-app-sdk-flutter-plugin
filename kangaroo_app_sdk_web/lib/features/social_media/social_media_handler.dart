// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/social_media/social_media_platform_interface.dart';


class SocialMediaHandler extends SocialMediaApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    SocialMediaApiInterface.instance = SocialMediaHandler();
  }

  @override
  getSocialMedia() {
    SocialMediaApi().getSocialMedia();
  }

  @override
  Stream<Result<SocialMediaModel>> get socialMediaStream {
    var controller = StreamController<String>();

    SocialMediaApi().observeSocialMediaState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
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

@JS('kangaroorewards.js.appsdk.features.socialMedia.SocialMediaApi')
class SocialMediaApi {
  external SocialMediaApi();

  external void getSocialMedia();

  external void observeSocialMediaState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

