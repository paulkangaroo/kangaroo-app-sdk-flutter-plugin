import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_details/user_details_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_details/user_details_platform_interface.dart';

class UserDetailsApi {
  static Future<Result<UserDetailsModel>?> getUserDetails({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return UserDetailsApiInterface.instance.getUserDetails( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<UserDetailsModel>> get userDetailsStream {
    return UserDetailsApiInterface.instance.userDetailsStream;
  }
}
