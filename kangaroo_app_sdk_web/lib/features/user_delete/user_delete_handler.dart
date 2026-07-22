// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_delete/user_delete_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';

class UserDeleteHandler extends UserDeleteApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserDeleteApiInterface.instance = UserDeleteHandler();
  }

  @override
  deleteUserAccount({ 
      final Map<String, String>? overrideHeaders,

    }) {
    final Future<String?> request = UserDeleteApi().deleteUserAccount(
        jsonEncode(overrideHeaders),
        
    ).toDart.then((value) => value?.toDart);

    return UserDeleteApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<EmptyResponse>> get userDeleteStream {
    var controller = StreamController<String>();

    UserDeleteApi().observeUserDeleteState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = EmptyResponse.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case EmptyResponse:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userDelete.UserDeleteApi')
extension type UserDeleteApi._(JSObject _) implements JSObject {
  external factory UserDeleteApi();

  external JSPromise<JSString?> deleteUserAccount( 
        String? overrideHeaders, 

    );

  external void observeUserDeleteState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

