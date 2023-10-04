// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

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
    final Future<String?> request = promiseToFuture<String?>(
        UserCouponsApi().getUserCoupons());

    return UserCouponsApiInterface.deSerializedPlatformResponse(
      request,
    );
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

@JS('js.features.userCoupons.UserCouponsApi')
class UserCouponsApi {
  external UserCouponsApi();

  external dynamic getUserCoupons();

  external void observeUserCouponsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

