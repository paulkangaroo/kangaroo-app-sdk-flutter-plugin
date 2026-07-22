import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_amazon_catalogue/user_amazon_catalogue_api_interface.dart';



class UserAmazonCatalogueApiFederated extends UserAmazonCatalogueApiInterface {
  @override
Future<Result<UserRewardsModel>?> getUserAmazonCatalogue({ 
        final Map<String, String>? overrideHeaders,
        required final int pageNumber,
        required final int perPage,
        required final String? keywords,
        required final String? filters
    }) async {
    final Future<String?> response = sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_amazon_catalogue',
    {
      'overrideHeaders' : overrideHeaders,
      'pageNumber' : pageNumber,
      'perPage' : perPage,
      'keywords' : keywords,
      'filters' : filters
    }
    );

    return UserAmazonCatalogueApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _userAmazonCatalogueEvent =
      const EventChannel("customer_sdk/events/get_user_amazon_catalogue");

  @override
  Stream<Result<UserRewardsModel>> get userAmazonCatalogueStream {
    return _userAmazonCatalogueEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = UserRewardsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case UserRewardsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
