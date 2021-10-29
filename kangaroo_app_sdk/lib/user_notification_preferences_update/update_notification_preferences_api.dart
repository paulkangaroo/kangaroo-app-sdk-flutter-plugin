import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences_update/update_notification_preferences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_notification_preferences_update/update_notification_preferences_platform_interface.dart'
    show NotificationUpdateModel, NotificationPreferencesRequest;

class UpdateNotificationPreferencesApi {
  static updateNotificationPreferences({ 
    required final NotificationPreferencesRequest notificationPreferencesRequest,
  }) {
    UpdateNotificationPreferencesApiInterface.instance.updateNotificationPreferences( 
      notificationPreferencesRequest: notificationPreferencesRequest,
    );
  }

  static Stream<Result<NotificationUpdateModel>> get updateNotificationPreferencesStream {
    return UpdateNotificationPreferencesApiInterface.instance.updateNotificationPreferencesStream;
  }
}
