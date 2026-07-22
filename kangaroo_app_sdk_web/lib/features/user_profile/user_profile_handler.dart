// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_profile/user_profile_platform_interface.dart';


class UserProfileHandler extends UserProfileApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserProfileApiInterface.instance = UserProfileHandler();
  }

  @override
  getUserProfile({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = UserProfileApi().getUserProfile(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return UserProfileApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserProfileModel>> get userProfileStream {
    var controller = StreamController<String>();

    UserProfileApi().observeUserProfileState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
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

@JS('js.features.userProfile.UserProfileApi')
extension type UserProfileApi._(JSObject _) implements JSObject {
  external factory UserProfileApi();

  external JSPromise<JSString?> getUserProfile( 
        String? overrideHeaders, 

    );

  external void observeUserProfileState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

