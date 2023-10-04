import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_ala_carte/ala_carte_products_api_interface.dart';



class AlaCarteProductsApiFederated extends AlaCarteProductsApiInterface {
  @override
Future<Result<AlaCarteProductsModel>?> getAlaCarteProducts() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_ala_carte_products');

    return AlaCarteProductsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _alaCarteProductsEvent =
      const EventChannel("customer_sdk/events/get_ala_carte_products");

  @override
  Stream<Result<AlaCarteProductsModel>> get alaCarteProductsStream {
    return _alaCarteProductsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = AlaCarteProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case AlaCarteProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
