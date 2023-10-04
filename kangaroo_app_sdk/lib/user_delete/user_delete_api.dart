import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_delete/user_delete_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_delete/user_delete_platform_interface.dart';

class UserDeleteApi {
  static Future<Result<EmptyResponse>?> deleteUserAccount() {
    return UserDeleteApiInterface.instance.deleteUserAccount();
  }

  static Stream<Result<EmptyResponse>> get userDeleteStream {
    return UserDeleteApiInterface.instance.userDeleteStream;
  }
}
