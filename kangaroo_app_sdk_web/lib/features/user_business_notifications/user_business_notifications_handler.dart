// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_notifications/user_business_notifications_platform_interface.dart';


class UserBusinessNotificationsHandler extends UserBusinessNotificationsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserBusinessNotificationsApiInterface.instance = UserBusinessNotificationsHandler();
  }

  @override
  getUserBusinessNotifications({ 
      final Map<String, String>? overrideHeaders,
        required final String businessId
    }) {
    final Future<String?> request = UserBusinessNotificationsApi().getUserBusinessNotifications(
        jsonEncode(overrideHeaders),
        businessId
    ).toDart.then((value) => value?.toDart);

    return UserBusinessNotificationsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessNotificationsModel>> get userBusinessNotificationsStream {
    var controller = StreamController<String>();

    UserBusinessNotificationsApi().observeUserBusinessNotificationsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessNotificationsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessNotificationsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessNotifications.UserBusinessNotificationsApi')
extension type UserBusinessNotificationsApi._(JSObject _) implements JSObject {
  external factory UserBusinessNotificationsApi();

  external JSPromise<JSString?> getUserBusinessNotifications( 
        String? overrideHeaders, 
        String businessId
    );

  external void observeUserBusinessNotificationsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

