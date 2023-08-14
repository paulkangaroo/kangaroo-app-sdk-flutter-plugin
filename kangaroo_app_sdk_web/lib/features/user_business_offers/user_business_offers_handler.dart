// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_offers/user_business_offers_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';

class UserBusinessOffersHandler extends UserBusinessOffersApiInterface
    implements PluginChannelHandler {
  @override
  void registerPluginHandler() {
    UserBusinessOffersApiInterface.instance = UserBusinessOffersHandler();
  }

  @override
  Future<Result<UserBusinessOffersModel>?> getUserBusinessOffers({
    required final String businessId,
  }) async {
    final Future<String?> request = promiseToFuture<String?>(
      UserBusinessOffersApi().getUserBusinessOffers(businessId),
    );

    return UserBusinessOffersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserBusinessOffersModel>> get userBusinessOffersStream {
    var controller = StreamController<String>();

    UserBusinessOffersApi().observeUserBusinessOffersState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = UserBusinessOffersModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserBusinessOffersModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.userBusinessOffers.UserBusinessOffersApi')
class UserBusinessOffersApi {
  external UserBusinessOffersApi();

  external dynamic getUserBusinessOffers(String businessId);

  external void observeUserBusinessOffersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}
