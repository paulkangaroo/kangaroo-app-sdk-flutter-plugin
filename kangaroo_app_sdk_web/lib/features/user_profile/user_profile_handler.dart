// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile/user_profile_platform_interface.dart';


class UserProfileHandler extends UserProfileApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserProfileApiInterface.instance = UserProfileHandler();
  }

  @override
  getUserProfile() {
    UserProfileApi().getUserProfile();
  }

  @override
  Stream<Result<UserProfileModel>> get userProfileStream {
    var controller = StreamController<String>();

    UserProfileApi().observeUserProfileState(
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

@JS('js.features.userProfile.UserProfileApi')
class UserProfileApi {
  external UserProfileApi();

  external void getUserProfile();

  external void observeUserProfileState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

