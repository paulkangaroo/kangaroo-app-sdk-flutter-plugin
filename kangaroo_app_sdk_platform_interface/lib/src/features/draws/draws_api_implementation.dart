import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/draws/draws_api_interface.dart';



class DrawsApiFederated extends DrawsApiInterface {
  @override
Future<Result<DrawsModel>?> getDraws() async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_draws');

    return DrawsApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _drawsEvent =
      const EventChannel("customer_sdk/events/get_draws");

  @override
  Stream<Result<DrawsModel>> get drawsStream {
    return _drawsEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = DrawsModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case DrawsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
