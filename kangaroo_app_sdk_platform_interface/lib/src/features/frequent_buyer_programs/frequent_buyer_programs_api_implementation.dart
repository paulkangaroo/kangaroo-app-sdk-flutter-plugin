import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/frequent_buyer_programs/frequent_buyer_programs_api_interface.dart';



class FrequentBuyerProgramsApiFederated extends FrequentBuyerProgramsApiInterface {
  @override
Future<Result<FrequentBuyerProgramsModel>?> getFrequentBuyerPrograms() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_frequent_buyer_programs');

    return FrequentBuyerProgramsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _frequentBuyerProgramsEvent =
      const EventChannel("customer_sdk/events/get_frequent_buyer_programs");

  @override
  Stream<Result<FrequentBuyerProgramsModel>> get frequentBuyerProgramsStream {
    return _frequentBuyerProgramsEvent.receiveBroadcastStream().distinct().map((event) {
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
