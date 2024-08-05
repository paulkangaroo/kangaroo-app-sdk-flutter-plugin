import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transaction_history/user_transaction_history_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_transaction_history/user_transaction_history_platform_interface.dart';

class UserTransactionHistoryApi {
  static Future<Result<UserTransactionHistoryModel>?> getUserTransactionHistory({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return UserTransactionHistoryApiInterface.instance.getUserTransactionHistory( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<UserTransactionHistoryModel>> get userTransactionHistoryStream {
    return UserTransactionHistoryApiInterface.instance.userTransactionHistoryStream;
  }
}
