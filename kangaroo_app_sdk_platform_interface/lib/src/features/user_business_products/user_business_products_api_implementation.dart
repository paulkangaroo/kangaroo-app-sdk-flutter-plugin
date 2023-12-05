import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_products/user_business_products_api_interface.dart';



class UserBusinessProductsApiFederated extends UserBusinessProductsApiInterface {
  @override
Future<Result<UserProductsModel>?> getUserBusinessProducts({ 
        required final String businessId
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_products',
    {
      'businessId' : businessId
    }
    );

    return UserBusinessProductsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userBusinessProductsEvent =
      const EventChannel("customer_sdk/events/get_user_business_products");

  @override
  Stream<Result<UserProductsModel>> get userBusinessProductsStream {
    return _userBusinessProductsEvent.receiveBroadcastStream().distinct().map((event) {
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
