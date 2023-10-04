// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
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
  deleteUserAccount() {
    final Future<String?> request = promiseToFuture<String?>(
        UserDeleteApi().deleteUserAccount());

    return UserDeleteApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<EmptyResponse>> get userDeleteStream {
    var controller = StreamController<String>();

    UserDeleteApi().observeUserDeleteState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class UserDeleteApi {
  external UserDeleteApi();

  external dynamic deleteUserAccount();

  external void observeUserDeleteState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

