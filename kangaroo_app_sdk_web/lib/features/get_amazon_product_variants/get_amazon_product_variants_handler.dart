// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_interop';

import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_amazon_product_variants/get_amazon_product_variants_platform_interface.dart';


class GetAmazonProductVariantsHandler extends GetAmazonProductVariantsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetAmazonProductVariantsApiInterface.instance = GetAmazonProductVariantsHandler();
  }

  @override
  getAmazonProductVariants({ 
      final Map<String, String>? overrideHeaders,
        required final int rewardId,
        required final String externalProductId
    }) {
    final Future<String?> request = GetAmazonProductVariantsApi().getAmazonProductVariants(
        jsonEncode(overrideHeaders),
        rewardId,
      externalProductId
    ).toDart.then((value) => value?.toDart);

    return GetAmazonProductVariantsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<RewardResponseModel>> get getAmazonProductVariantsStream {
    var controller = StreamController<String>();

    GetAmazonProductVariantsApi().observeGetAmazonProductVariantsState(
      ((JSString success) => controller.add(success.toDart)).toJS,
      ((JSString error) => print("Flutter Response: ${error.toDart}")).toJS,
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = RewardResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RewardResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getAmazonProductVariants.GetAmazonProductVariantsApi')
extension type GetAmazonProductVariantsApi._(JSObject _) implements JSObject {
  external factory GetAmazonProductVariantsApi();

  external JSPromise<JSString?> getAmazonProductVariants( 
        String? overrideHeaders, 
        int rewardId,
        String externalProductId
    );

  external void observeGetAmazonProductVariantsState(
    JSFunction onData,
    JSFunction onStreamError,
  );
}

