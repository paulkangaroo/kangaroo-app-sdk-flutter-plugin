import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/frequent_buyer/frequent_buyer_api_interface.dart';



class FrequentBuyerApiFederated extends FrequentBuyerApiInterface {
  @override
  getFrequentBuyer() {
    sdkMethodChannel.invokeMethod('customer_sdk/methods/get_frequent_buyer');
  }

  static const EventChannel _frequentBuyerEvent =
      const EventChannel("customer_sdk/events/get_frequent_buyer");

  @override
  Stream<Result<FrequentBuyerModel>> get frequentBuyerStream {
    return _frequentBuyerEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = FrequentBuyerModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case FrequentBuyerModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
