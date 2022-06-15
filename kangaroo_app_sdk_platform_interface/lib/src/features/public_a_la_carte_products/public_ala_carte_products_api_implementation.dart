import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/public_a_la_carte_products/public_ala_carte_products_api_interface.dart';



class PublicAlaCarteProductsApiFederated extends PublicAlaCarteProductsApiInterface {
  @override
  getPublicAlaCarteProducts() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_public_ala_carte_products');
  }

  static const EventChannel _publicAlaCarteProductsEvent =
      const EventChannel("customer_sdk/events/get_public_ala_carte_products");

  @override
  Stream<Result<PublicALaCarteProductsModel>> get publicAlaCarteProductsStream {
    return _publicAlaCarteProductsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = PublicALaCarteProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case PublicALaCarteProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
