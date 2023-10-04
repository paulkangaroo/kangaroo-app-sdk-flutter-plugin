library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transfer_messages/transfer_messages_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_messages_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_messages_model.dart';

abstract class TransferMessagesApiInterface extends PlatformInterface {
  TransferMessagesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static TransferMessagesApiInterface _instance = TransferMessagesApiFederated();

  static TransferMessagesApiInterface get instance => _instance;

  static set instance(TransferMessagesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<TransferMessagesModel>?> getTransferMessages({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getTransferMessages has not been implemented.');
  }

  Stream<Result<TransferMessagesModel>> get transferMessagesStream {
    throw UnimplementedError('getTransferMessagesStream has not been implemented.');
  }

  static Future<Result<TransferMessagesModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = TransferMessagesModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case TransferMessagesModel:
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
