import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences/get_notification_preferences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences/get_notification_preferences_platform_interface.dart';

class GetNotificationPreferencesApi {
  static Future<Result<NotificationSettingsModel>?> getNotificationPreferences() {
    return GetNotificationPreferencesApiInterface.instance.getNotificationPreferences();
  }

  static Stream<Result<NotificationSettingsModel>> get getNotificationPreferencesStream {
    return GetNotificationPreferencesApiInterface.instance.getNotificationPreferencesStream;
  }
}
