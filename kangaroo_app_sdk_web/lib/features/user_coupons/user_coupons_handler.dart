// ignore_for_file: implementation_imports

@JS('KangarooAppSDK')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_coupons/user_coupons_platform_interface.dart';


class UserCouponsHandler extends UserCouponsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserCouponsApiInterface.instance = UserCouponsHandler();
  }

  @override
  getUserCoupons() {
    UserCouponsApi().getUserCoupons();
  }

  @override
  Stream<Result<UserCouponsModel>> get userCouponsStream {
    var controller = StreamController<String>();

    UserCouponsApi().observeUserCouponsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserCouponsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserCouponsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('kangaroorewards.js.appsdk.features.userCoupons.UserCouponsApi')
class UserCouponsApi {
  external UserCouponsApi();

  external void getUserCoupons();

  external void observeUserCouponsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

