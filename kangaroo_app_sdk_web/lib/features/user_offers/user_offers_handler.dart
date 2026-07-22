// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_offers/user_offers_platform_interface.dart';


class UserOffersHandler extends UserOffersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    UserOffersApiInterface.instance = UserOffersHandler();
  }

  @override
  getUserOffers({ 
      final Map<String, String>? overrideHeaders,
        required final int perPage
    }) {
    final Future<String?> request = UserOffersApi().getUserOffers(
        jsonEncode(overrideHeaders),
        perPage
    ).toDart.then((value) => value?.toDart);

    return UserOffersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserOffersModel>> get userOffersStream {
    var controller = StreamController<String>();

    UserOffersApi().observeUserOffersState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userOffers.UserOffersApi')
extension type UserOffersApi._(JSObject _) implements JSObject {
  external factory UserOffersApi();

  external JSPromise<JSString?> getUserOffers( 
        String? overrideHeaders, 
        int perPage
    );

  external void observeUserOffersState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

