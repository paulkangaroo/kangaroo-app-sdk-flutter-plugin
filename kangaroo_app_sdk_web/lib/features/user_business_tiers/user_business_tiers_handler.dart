// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_tiers/user_business_tiers_platform_interface.dart';


class UserBusinessTiersHandler extends UserBusinessTiersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessTiersApiInterface.instance = UserBusinessTiersHandler();
  }

  @override
  getUserBusinessTiers({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessTiersApi().getUserBusinessTiers(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessTiersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileWithTierProgram>> get userBusinessTiersStream {
    var controller = StreamController<String>();

    UserBusinessTiersApi().observeUserBusinessTiersState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserProfileWithTierProgram.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProfileWithTierProgram:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessTiers.UserBusinessTiersApi')
extension type UserBusinessTiersApi._(JSObject _) implements JSObject {
  external factory UserBusinessTiersApi();

  external JSPromise<JSString?> getUserBusinessTiers( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessTiersState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

