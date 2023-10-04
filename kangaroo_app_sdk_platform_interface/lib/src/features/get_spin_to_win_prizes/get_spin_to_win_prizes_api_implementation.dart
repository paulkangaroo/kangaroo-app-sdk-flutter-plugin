import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/get_spin_to_win_prizes/get_spin_to_win_prizes_api_interface.dart';



class GetSpinToWinPrizesApiFederated extends GetSpinToWinPrizesApiInterface {
  @override
Future<Result<SpinToWinPrizesModel>?> getSpinToWinPrizes({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_spin_to_win_prizes',
    {
      'businessId' : businessId
    }
    );

    return GetSpinToWinPrizesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _getSpinToWinPrizesEvent =
      const EventChannel("customer_sdk/events/get_spin_to_win_prizes");

  @override
  Stream<Result<SpinToWinPrizesModel>> get getSpinToWinPrizesStream {
    return _getSpinToWinPrizesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = SpinToWinPrizesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case SpinToWinPrizesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
