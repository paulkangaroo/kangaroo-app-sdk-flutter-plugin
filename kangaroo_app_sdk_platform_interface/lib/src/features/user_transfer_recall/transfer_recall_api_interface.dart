library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transfer_recall/transfer_recall_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_recall_result_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_recall_result_model.dart';

abstract class TransferRecallApiInterface extends PlatformInterface {
  TransferRecallApiInterface() : super(token: _token);

  static final Object _token = Object();

  static TransferRecallApiInterface _instance = TransferRecallApiFederated();

  static TransferRecallApiInterface get instance => _instance;

  static set instance(TransferRecallApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  recallTransfer({ 
        required final String recallId,
    }) {
    throw UnimplementedError('recallTransfer has not been implemented.');
  }

  Stream<Result<TransferRecallResultModel>> get transferRecallStream {
    throw UnimplementedError('getTransferRecallStream has not been implemented.');
  }
}
