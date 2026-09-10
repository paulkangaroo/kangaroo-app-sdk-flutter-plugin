// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
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
    final Future<String?> request = promiseToFuture<String?>(
        GetAmazonProductVariantsApi().getAmazonProductVariants(
        jsonEncode(overrideHeaders),
        rewardId,
      externalProductId
    ),);

    return GetAmazonProductVariantsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<RewardResponseModel>> get getAmazonProductVariantsStream {
    var controller = StreamController<String>();

    GetAmazonProductVariantsApi().observeGetAmazonProductVariantsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
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
class GetAmazonProductVariantsApi {
  external GetAmazonProductVariantsApi();

  external dynamic getAmazonProductVariants( 
        String? overrideHeaders, 
        int rewardId,
        String externalProductId
    );

  external void observeGetAmazonProductVariantsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

