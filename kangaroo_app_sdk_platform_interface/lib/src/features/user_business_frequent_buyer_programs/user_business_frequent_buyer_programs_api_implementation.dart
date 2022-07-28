import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_frequent_buyer_programs/user_business_frequent_buyer_programs_api_interface.dart';



class UserBusinessFrequentBuyerProgramsApiFederated extends UserBusinessFrequentBuyerProgramsApiInterface {
  @override
  getUserBusinessFrequentBuyerPrograms({ 
        required final String businessId
    }) {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_user_business_frequent_buyer_programs',
    {
      'businessId' : businessId
    }
    );
  }

  static const EventChannel _userBusinessFrequentBuyerProgramsEvent =
      const EventChannel("customer_sdk/events/get_user_business_frequent_buyer_programs");

  @override
  Stream<Result<FrequentBuyerProgramsModel>> get userBusinessFrequentBuyerProgramsStream {
    return _userBusinessFrequentBuyerProgramsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = FrequentBuyerProgramsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case FrequentBuyerProgramsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
