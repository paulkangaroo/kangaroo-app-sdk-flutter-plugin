// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_check_in/user_check_in_platform_interface.dart';


class UserCheckInHandler extends UserCheckInApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserCheckInApiInterface.instance = UserCheckInHandler();
  }

  @override
  userCheckIn({ 
        required final CheckInRequest checkInRequest
    }) {
    UserCheckInApi().userCheckIn(
      jsonEncode(checkInRequest)
    );
  }

  @override
  Stream<Result<CheckInResponseModel>> get userCheckInStream {
    var controller = StreamController<String>();

    UserCheckInApi().observeUserCheckInState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = CheckInResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case CheckInResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userCheckIn.UserCheckInApi')
class UserCheckInApi {
  external UserCheckInApi();

  external void userCheckIn( 
        String checkInRequest
    );

  external void observeUserCheckInState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

