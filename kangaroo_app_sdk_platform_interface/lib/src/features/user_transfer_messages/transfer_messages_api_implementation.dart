import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/base.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/state.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transfer_messages/transfer_messages_api_interface.dart';



class TransferMessagesApiFederated extends TransferMessagesApiInterface {
  @override
Future<Result<TransferMessagesModel>?> getTransferMessages({ 
        required final String businessId
    }) async {
    final response = await sdkMethodChannel.invokeMethod('customer_sdk/methods/get_transfer_messages',
    {
      'businessId' : businessId
    }
    );

    return TransferMessagesApiInterface.deSerializedPlatformResponse(
      response,
    );
  }

  static const EventChannel _transferMessagesEvent =
      const EventChannel("customer_sdk/events/get_transfer_messages");

  @override
  Stream<Result<TransferMessagesModel>> get transferMessagesStream {
    return _transferMessagesEvent.receiveBroadcastStream().distinct().map((event) {
      dynamic result;
      try {
        result = TransferMessagesModel.fromJson(jsonDecode(event));
      } catch (error) {
        result = State.fromJson(jsonDecode(event));
      }
      switch (result.runtimeType) {
        case TransferMessagesModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(code: -1, message: "unknown error");
      }
    });
  }
}
