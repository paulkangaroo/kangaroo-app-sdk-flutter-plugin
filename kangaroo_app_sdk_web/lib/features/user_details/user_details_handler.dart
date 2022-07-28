// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_details/user_details_platform_interface.dart';


class UserDetailsHandler extends UserDetailsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserDetailsApiInterface.instance = UserDetailsHandler();
  }

  @override
  getUserDetails() {
    UserDetailsApi().getUserDetails();
  }

  @override
  Stream<Result<UserDetailsModel>> get userDetailsStream {
    var controller = StreamController<String>();

    UserDetailsApi().observeUserDetailsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserDetailsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserDetailsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userDetails.UserDetailsApi')
class UserDetailsApi {
  external UserDetailsApi();

  external void getUserDetails();

  external void observeUserDetailsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

