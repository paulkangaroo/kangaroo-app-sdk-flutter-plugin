import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences_update/update_notification_preferences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences_update/update_notification_preferences_platform_interface.dart';

class UpdateNotificationPreferencesApi {
  static Future<Result<NotificationSettingsModel>?> updateNotificationPreferences({ 
    required final NotificationSettingsUpdateRequest notificationPreferencesRequest,
  }) {
    return UpdateNotificationPreferencesApiInterface.instance.updateNotificationPreferences( 
      notificationPreferencesRequest: notificationPreferencesRequest,
    );
  }

  static Stream<Result<NotificationSettingsModel>> get updateNotificationPreferencesStream {
    return UpdateNotificationPreferencesApiInterface.instance.updateNotificationPreferencesStream;
  }
}
