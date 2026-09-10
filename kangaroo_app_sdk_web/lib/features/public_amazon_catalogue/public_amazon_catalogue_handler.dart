// ignore_for_file: implementation_imports

@JS('KangarooAppCustomerSDK')
library kangaroo_app_customer_sdk.js;

import 'dart:async';
import 'dart:convert';
import 'dart:js_util';

import 'package:js/js.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_web/base/plugin_channel_handler.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/public_amazon_catalogue/public_amazon_catalogue_platform_interface.dart';


class PublicAmazonCatalogueHandler extends PublicAmazonCatalogueApiInterface
    implements PluginChannelHandler{

  @override
  void registerPluginHandler() {
    PublicAmazonCatalogueApiInterface.instance = PublicAmazonCatalogueHandler();
  }

  @override
  getPublicAmazonCatalogue({ 
      final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage,
        required final String? keywords,
        required final String? filters
    }) {
    final Future<String?> request = promiseToFuture<String?>(
        PublicAmazonCatalogueApi().getPublicAmazonCatalogue(
        jsonEncode(overrideHeaders),
        pageNumber,
      perPage,
      keywords,
      filters
    ),);

    return PublicAmazonCatalogueApiInterface.deSerializedPlatformResponse(
      request,
    );
  }

  @override
  Stream<Result<PublicRewardsModel>> get publicAmazonCatalogueStream {
    var controller = StreamController<String>();

    PublicAmazonCatalogueApi().observePublicAmazonCatalogueState(
      allowInterop((success) => {controller.add(success)}),
      allowInterop((error) => {print("Flutter Response: $error")}),
    );

    return controller.stream.distinct().map((event) {
      dynamic result;
      try {
        result = PublicRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}

@JS('js.features.publicAmazonCatalogue.PublicAmazonCatalogueApi')
class PublicAmazonCatalogueApi {
  external PublicAmazonCatalogueApi();

  external dynamic getPublicAmazonCatalogue( 
        String? overrideHeaders, 
        int pageNumber,
        int perPage,
        String? keywords,
        String? filters
    );

  external void observePublicAmazonCatalogueState(
    Function(String) onData,
    Function(String) onStreamError,
  );
}

