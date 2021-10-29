library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_transaction_history/user_transaction_history_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_transaction_history_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_transaction_history_model.dart';

abstract class UserTransactionHistoryApiInterface extends PlatformInterface {
  UserTransactionHistoryApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserTransactionHistoryApiInterface _instance = UserTransactionHistoryApiFederated();

  static UserTransactionHistoryApiInterface get instance => _instance;

  static set instance(UserTransactionHistoryApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getUserTransactionHistory() {
    throw UnimplementedError('getUserTransactionHistory has not been implemented.');
  }

  Stream<Result<UserTransactionHistoryModel>> get userTransactionHistoryStream {
    throw UnimplementedError('getUserTransactionHistoryStream has not been implemented.');
  }
}
