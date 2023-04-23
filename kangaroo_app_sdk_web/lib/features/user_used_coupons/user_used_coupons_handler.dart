// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_used_coupons/user_used_coupons_platform_interface.dart';


class UserUsedCouponsHandler extends UserUsedCouponsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserUsedCouponsApiInterface.instance = UserUsedCouponsHandler();
  }

  @override
  getUserUsedCoupons() {
    UserUsedCouponsApi().getUserUsedCoupons();
  }

  @override
  Stream<Result<UserCouponsModel>> get userUsedCouponsStream {
    var controller = StreamController<String>();

    UserUsedCouponsApi().observeUserUsedCouponsState(
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

@JS('js.features.userUsedCoupons.UserUsedCouponsApi')
class UserUsedCouponsApi {
  external UserUsedCouponsApi();

  external void getUserUsedCoupons();

  external void observeUserUsedCouponsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

