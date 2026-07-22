// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_used_coupons/user_business_used_coupons_platform_interface.dart';


class UserBusinessUsedCouponsHandler extends UserBusinessUsedCouponsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessUsedCouponsApiInterface.instance = UserBusinessUsedCouponsHandler();
  }

  @override
  getUserBusinessUsedCoupons({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessUsedCouponsApi().getUserBusinessUsedCoupons(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessUsedCouponsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessCouponsModel>> get userBusinessUsedCouponsStream {
    var controller = StreamController<String>();

    UserBusinessUsedCouponsApi().observeUserBusinessUsedCouponsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.userBusinessUsedCoupons.UserBusinessUsedCouponsApi')
extension type UserBusinessUsedCouponsApi._(JSObject _) implements JSObject {
  external factory UserBusinessUsedCouponsApi();

  external JSPromise<JSString?> getUserBusinessUsedCoupons( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessUsedCouponsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

