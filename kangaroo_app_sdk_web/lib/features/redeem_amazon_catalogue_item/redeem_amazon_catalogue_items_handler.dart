// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/redeem_amazon_catalogue_item/redeem_amazon_catalogue_items_platform_interface.dart';


class RedeemAmazonCatalogueItemsHandler extends RedeemAmazonCatalogueItemsApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    RedeemAmazonCatalogueItemsApiInterface.instance = RedeemAmazonCatalogueItemsHandler();
  }

  @override
  redeemAmazonCatalogueItem({ 
      final Map<String, String>? overrideHeaders,
        required final RedeemAmazonItemRequest redeemAmazonItemRequest
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        RedeemAmazonCatalogueItemsApi().redeemAmazonCatalogueItem(
        jsonEncode(overrideHeaders),
        jsonEncode(redeemAmazonItemRequest)
    ),);

    return RedeemAmazonCatalogueItemsApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<RedeemResponseModel>> get redeemAmazonCatalogueItemsStream {
    var controller = StreamController<String>();

    RedeemAmazonCatalogueItemsApi().observeRedeemAmazonCatalogueItemsState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = RedeemResponseModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case RedeemResponseModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.redeemAmazonCatalogueItem.RedeemAmazonCatalogueItemsApi')
class RedeemAmazonCatalogueItemsApi {
  external RedeemAmazonCatalogueItemsApi();

  external dynamic redeemAmazonCatalogueItem( 
        String? overrideHeaders, 
        String redeemAmazonItemRequest
    );

  external void observeRedeemAmazonCatalogueItemsState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

