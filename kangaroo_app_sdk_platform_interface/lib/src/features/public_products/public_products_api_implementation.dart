import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_products/public_products_api_interface.dart';



class PublicProductsApiFederated extends PublicProductsApiInterface {
  @override
Future<Result<PublicProductsModel>?> getPublicProducts() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_products');

    return PublicProductsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _publicProductsEvent =
      const EventChannel("customer_sdk/events/get_public_products");

  @override
  Stream<Result<PublicProductsModel>> get publicProductsStream {
    return _publicProductsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
