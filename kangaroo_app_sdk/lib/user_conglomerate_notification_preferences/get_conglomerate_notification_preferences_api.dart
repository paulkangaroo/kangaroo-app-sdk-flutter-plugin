import 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_conglomerate_notification_preferences/get_conglomerate_notification_preferences_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';

export 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart'
    show Result;
export 'package:kangaroo_app_sdk_platform_interface/platform_interface/features/user_conglomerate_notification_preferences/get_conglomerate_notification_preferences_platform_interface.dart';

class GetConglomerateNotificationPreferencesApi {
  static Future<Result<NotificationSettingsModel>?> getConglomerateNotificationPreferences({ 
    final Map<String, String>? overrideHeaders,

  }) {
    return GetConglomerateNotificationPreferencesApiInterface.instance.getConglomerateNotificationPreferences( 
      overrideHeaders: overrideHeaders,

    );
  }

  static Stream<Result<NotificationSettingsModel>> get getConglomerateNotificationPreferencesStream {
    return GetConglomerateNotificationPreferencesApiInterface.instance.getConglomerateNotificationPreferencesStream;
  }
}
