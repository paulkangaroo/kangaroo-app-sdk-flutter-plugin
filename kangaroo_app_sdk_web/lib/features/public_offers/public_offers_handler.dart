// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_offers/public_offers_platform_interface.dart';


class PublicOffersHandler extends PublicOffersApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicOffersApiInterface.instance = PublicOffersHandler();
  }

  @override
  getPublicOffers() {
    final Future<String?> request = promiseToFuture<String?>(
        PublicOffersApi().getPublicOffers());

    return PublicOffersApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<UserOffersModel>> get publicOffersStream {
    var controller = StreamController<String>();

    PublicOffersApi().observePublicOffersState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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

@JS('js.features.publicOffers.PublicOffersApi')
class PublicOffersApi {
  external PublicOffersApi();

  external dynamic getPublicOffers();

  external void observePublicOffersState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

