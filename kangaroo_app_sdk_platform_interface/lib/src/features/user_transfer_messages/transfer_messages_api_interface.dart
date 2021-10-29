library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
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

  getTransferMessages({ 
        required final String businessId,
    }) {
    throw UnimplementedError('getTransferMessages has not been implemented.');
  }

  Stream<Result<TransferMessagesModel>> get transferMessagesStream {
    throw UnimplementedError('getTransferMessagesStream has not been implemented.');
  }
}
