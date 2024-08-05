// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_coupons/user_business_coupons_platform_interface.dart';


class UserBusinessCouponsHandler extends UserBusinessCouponsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessCouponsApiInterface.instance = UserBusinessCouponsHandler();
  }

  @override
  getUserBusinessCoupons({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        UserBusinessCouponsApi().getUserBusinessCoupons(
        jsonEncode(overrideHeaders),
        businessId
    ),);

    return UserBusinessCouponsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessCouponsModel>> get userBusinessCouponsStream {
    var controller = StreamController<String>();

    UserBusinessCouponsApi().observeUserBusinessCouponsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessCouponsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessCouponsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessCoupons.UserBusinessCouponsApi')
class UserBusinessCouponsApi {
  external UserBusinessCouponsApi();

  external dynamic getUserBusinessCoupons( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessCouponsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

