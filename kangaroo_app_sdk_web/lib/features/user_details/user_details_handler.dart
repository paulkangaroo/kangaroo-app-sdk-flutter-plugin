// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_details/user_details_platform_interface.dart';


class UserDetailsHandler extends UserDetailsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserDetailsApiInterface.instance = UserDetailsHandler();
  }

  @override
  getUserDetails({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = UserDetailsApi().getUserDetails(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return UserDetailsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserDetailsModel>> get userDetailsStream {
    var controller = StreamController<String>();

    UserDetailsApi().observeUserDetailsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserDetailsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserDetailsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userDetails.UserDetailsApi')
extension type UserDetailsApi._(JSObject _) implements JSObject {
  external factory UserDetailsApi();

  external JSPromise<JSString?> getUserDetails( 
        String? overrideHeaders, 

    );

  external void observeUserDetailsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

