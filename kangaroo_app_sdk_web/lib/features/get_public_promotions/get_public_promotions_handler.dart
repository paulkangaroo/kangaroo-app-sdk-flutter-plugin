// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_promotions/get_public_promotions_platform_interface.dart';


class GetPublicPromotionsHandler extends GetPublicPromotionsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetPublicPromotionsApiInterface.instance = GetPublicPromotionsHandler();
  }

  @override
  getPublicPromotions({ 
      final Map<String, String>? overrideHeaders,
        required final String campaignId
    }) {
    final Future<String?> request = GetPublicPromotionsApi().getPublicPromotions(
        jsonEncode(overrideHeaders),
        campaignId
    ).toDart.then((value) => value?.toDart);

    return GetPublicPromotionsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PromotionsModel>> get getPublicPromotionsStream {
    var controller = StreamController<String>();

    GetPublicPromotionsApi().observeGetPublicPromotionsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PromotionsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PromotionsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getPublicPromotions.GetPublicPromotionsApi')
extension type GetPublicPromotionsApi._(JSObject _) implements JSObject {
  external factory GetPublicPromotionsApi();

  external JSPromise<JSString?> getPublicPromotions( 
        String? overrideHeaders, 
        String campaignId
    );

  external void observeGetPublicPromotionsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

