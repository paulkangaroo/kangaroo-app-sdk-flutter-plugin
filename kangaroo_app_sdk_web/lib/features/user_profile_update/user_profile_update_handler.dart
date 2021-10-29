// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile_update/user_profile_update_platform_interface.dart';


class UserProfileUpdateHandler extends UserProfileUpdateApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserProfileUpdateApiInterface.instance = UserProfileUpdateHandler();
  }

  @override
  updateUserProfile({ 
        final String? firstName,
        final String? lastName,
        final String? birthDate,
        final String? language,
        final String? gender,
        final String? profilePhoto = "facebook_share"
    }) {
    UserProfileUpdateApi().updateUserProfile(
      firstName,
      lastName,
      birthDate,
      language,
      gender,
      profilePhoto
    );
  }

  @override
  Stream<Result<UserProfileModel>> get userProfileUpdateStream {
    var controller = StreamController<String>();

    UserProfileUpdateApi().observeUserProfileUpdateState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userProfileUpdate.UserProfileUpdateApi')
class UserProfileUpdateApi {
  external UserProfileUpdateApi();

  external void updateUserProfile( 
        String? firstName,
        String? lastName,
        String? birthDate,
        String? language,
        String? gender,
        String? profilePhoto
    );

  external void observeUserProfileUpdateState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

