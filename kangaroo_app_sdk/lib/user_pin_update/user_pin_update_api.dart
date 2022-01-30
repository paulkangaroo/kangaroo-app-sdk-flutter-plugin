import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_update/user_pin_update_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_pin_update/user_pin_update_platform_interface.dart';

class UserPinUpdateApi {
  static updatePin({ 
    required final UpdatePinRequest updatePinRequest,
  }) {
    UserPinUpdateApiInterface.instance.updatePin( 
      updatePinRequest: updatePinRequest,
    );
  }

  static Stream<Result<UserProfileModel>> get userPinUpdateStream {
    return UserPinUpdateApiInterface.instance.userPinUpdateStream;
  }
}
