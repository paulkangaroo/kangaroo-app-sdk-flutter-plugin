// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/get_public_amazon_product_variants/get_public_amazon_product_variants_platform_interface.dart';


class GetPublicAmazonProductVariantsHandler extends GetPublicAmazonProductVariantsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    GetPublicAmazonProductVariantsApiInterface.instance = GetPublicAmazonProductVariantsHandler();
  }

  @override
  getPublicAmazonProductVariants({ 
      final Map<String, String>? overrideHeaders,
        required final String rewardSlug,
        required final String externalProductId
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        GetPublicAmazonProductVariantsApi().getPublicAmazonProductVariants(
        jsonEncode(overrideHeaders),
        rewardSlug,
      externalProductId
    ),);

    return GetPublicAmazonProductVariantsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicRewardResponseModel>> get getPublicAmazonProductVariantsStream {
    var controller = StreamController<String>();

    GetPublicAmazonProductVariantsApi().observeGetPublicAmazonProductVariantsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.getPublicAmazonProductVariants.GetPublicAmazonProductVariantsApi')
class GetPublicAmazonProductVariantsApi {
  external GetPublicAmazonProductVariantsApi();

  external dynamic getPublicAmazonProductVariants( 
        String? overrideHeaders, 
        String rewardSlug,
        String externalProductId
    );

  external void observeGetPublicAmazonProductVariantsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

