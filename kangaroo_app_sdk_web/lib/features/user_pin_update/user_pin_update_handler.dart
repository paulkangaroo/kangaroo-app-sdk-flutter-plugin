// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_update/user_pin_update_platform_interface.dart';


class UserPinUpdateHandler extends UserPinUpdateApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserPinUpdateApiInterface.instance = UserPinUpdateHandler();
  }

  @override
  updatePin({ 
        required final UpdatePinRequest updatePinRequest
    }) {
    UserPinUpdateApi().updatePin(
      jsonEncode(updatePinRequest)
    );
  }

  @override
  Stream<Result<UserProfileModel>> get userPinUpdateStream {
    var controller = StreamController<String>();

    UserPinUpdateApi().observeUserPinUpdateState(
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

@JS('kangaroorewards.js.appsdk.features.userPinUpdate.UserPinUpdateApi')
class UserPinUpdateApi {
  external UserPinUpdateApi();

  external void updatePin( 
        String updatePinRequest
    );

  external void observeUserPinUpdateState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

