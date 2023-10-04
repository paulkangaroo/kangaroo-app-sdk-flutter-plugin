library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/deposit_gift_card/gift_card_deposit_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_action_result_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_action_result_model.dart';

abstract class GiftCardDepositApiInterface extends PlatformInterface {
  GiftCardDepositApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GiftCardDepositApiInterface _instance = GiftCardDepositApiFederated();

  static GiftCardDepositApiInterface get instance => _instance;

  static set instance(GiftCardDepositApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<TransferActionResultModel>?> depositGiftCard({ 
        required final String depositId,
    }) {
    throw UnimplementedError('depositGiftCard has not been implemented.');
  }

  Stream<Result<TransferActionResultModel>> get giftCardDepositStream {
    throw UnimplementedError('getGiftCardDepositStream has not been implemented.');
  }

  static Future<Result<TransferActionResultModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = TransferActionResultModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case TransferActionResultModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
