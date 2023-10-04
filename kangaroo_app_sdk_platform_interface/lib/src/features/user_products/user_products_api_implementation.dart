import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_products/user_products_api_interface.dart';



class UserProductsApiFederated extends UserProductsApiInterface {
  @override
Future<Result<UserProductsModel>?> getUserProducts() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_products');

    return UserProductsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userProductsEvent =
      const EventChannel("customer_sdk/events/get_user_products");

  @override
  Stream<Result<UserProductsModel>> get userProductsStream {
    return _userProductsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserProductsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserProductsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
