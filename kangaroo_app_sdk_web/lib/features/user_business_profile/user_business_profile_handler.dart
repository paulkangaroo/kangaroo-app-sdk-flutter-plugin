// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_profile/user_business_profile_platform_interface.dart';


class UserBusinessProfileHandler extends UserBusinessProfileApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessProfileApiInterface.instance = UserBusinessProfileHandler();
  }

  @override
  getUserBusinessProfile({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessProfileApi().getUserBusinessProfile(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessProfileApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessProfileModel>> get userBusinessProfileStream {
    var controller = StreamController<String>();

    UserBusinessProfileApi().observeUserBusinessProfileState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessProfileModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessProfileModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessProfile.UserBusinessProfileApi')
extension type UserBusinessProfileApi._(JSObject _) implements JSObject {
  external factory UserBusinessProfileApi();

  external JSPromise<JSString?> getUserBusinessProfile( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessProfileState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

