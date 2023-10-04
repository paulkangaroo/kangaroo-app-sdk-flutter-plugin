import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration_with_crm/user_registration_with_crm_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_registration_with_crm/user_registration_with_crm_platform_interface.dart';

class UserRegistrationWithCrmApi {
  static Future<Result<UserProfileDataModel>?> createAccountWithCrm({ 
    required final CrmRegisterRequest registerWithCrmRequest,
  }) {
    return UserRegistrationWithCrmApiInterface.instance.createAccountWithCrm( 
      registerWithCrmRequest: registerWithCrmRequest,
    );
  }

  static Stream<Result<UserProfileDataModel>> get userRegistrationWithCrmStream {
    return UserRegistrationWithCrmApiInterface.instance.userRegistrationWithCrmStream;
  }
}
