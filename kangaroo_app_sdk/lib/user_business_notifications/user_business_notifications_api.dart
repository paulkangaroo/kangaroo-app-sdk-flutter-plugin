import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_notifications/user_business_notifications_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_business_notifications/user_business_notifications_platform_interface.dart';

class UserBusinessNotificationsApi {
  static Future<Result<UserBusinessNotificationsModel>?> getUserBusinessNotifications({ 
    final Map<String, String>? overrideHeaders,
    required final String businessId,
  }) {
    return UserBusinessNotificationsApiInterface.instance.getUserBusinessNotifications( 
      overrideHeaders: overrideHeaders,
      businessId: businessId,
    );
  }

  static Stream<Result<UserBusinessNotificationsModel>> get userBusinessNotificationsStream {
    return UserBusinessNotificationsApiInterface.instance.userBusinessNotificationsStream;
  }
}
