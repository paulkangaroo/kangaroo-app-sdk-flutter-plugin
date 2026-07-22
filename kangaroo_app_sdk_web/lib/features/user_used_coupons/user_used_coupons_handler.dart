// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

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
  getUserUsedCoupons({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = UserUsedCouponsApi().getUserUsedCoupons(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return UserUsedCouponsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserCouponsModel>> get userUsedCouponsStream {
    var controller = StreamController<String>();

    UserUsedCouponsApi().observeUserUsedCouponsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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
extension type UserUsedCouponsApi._(JSObject _) implements JSObject {
  external factory UserUsedCouponsApi();

  external JSPromise<JSString?> getUserUsedCoupons( 
        String? overrideHeaders, 

    );

  external void observeUserUsedCouponsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

