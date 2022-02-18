import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_check_in/user_check_in_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_check_in/user_check_in_platform_interface.dart';

class UserCheckInApi {
  static userCheckIn({ 
    required final CheckInRequest checkInRequest,
  }) {
    UserCheckInApiInterface.instance.userCheckIn( 
      checkInRequest: checkInRequest,
    );
  }

  static Stream<Result<CheckInResponseModel>> get userCheckInStream {
    return UserCheckInApiInterface.instance.userCheckInStream;
  }
}
