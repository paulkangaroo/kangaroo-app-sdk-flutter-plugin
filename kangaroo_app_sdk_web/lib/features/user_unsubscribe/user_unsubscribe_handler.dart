// ignore_for_file: implementation_imports

@JS('KangarooAppSDK-kangaroo-app-sdk-customer')
library kangaroo_app_sdk.js;

import 'dart:async';
import 'dart:convert';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_unsubscribe/user_unsubscribe_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/empty_response.dart';

class UserUnsubscribeHandler extends UserUnsubscribeApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserUnsubscribeApiInterface.instance = UserUnsubscribeHandler();
  }

  @override
  unsubscribe({ 
        required final String campaignId,
        required final String token
    }) {
    UserUnsubscribeApi().unsubscribe(
      campaignId,
      token
    );
  }

  @override
  Stream<Result<EmptyResponse>> get userUnsubscribeStream {
    var controller = StreamController<String>();

    UserUnsubscribeApi().observeUserUnsubscribeState(
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

@JS('js.features.userUnsubscribe.UserUnsubscribeApi')
class UserUnsubscribeApi {
  external UserUnsubscribeApi();

  external void unsubscribe( 
        String campaignId,
        String token
    );

  external void observeUserUnsubscribeState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

