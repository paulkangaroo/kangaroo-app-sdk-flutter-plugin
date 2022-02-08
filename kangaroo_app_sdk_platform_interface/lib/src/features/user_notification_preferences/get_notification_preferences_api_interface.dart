library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_notification_preferences/get_notification_preferences_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_model.dart';

abstract class GetNotificationPreferencesApiInterface extends PlatformInterface {
  GetNotificationPreferencesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static GetNotificationPreferencesApiInterface _instance = GetNotificationPreferencesApiFederated();

  static GetNotificationPreferencesApiInterface get instance => _instance;

  static set instance(GetNotificationPreferencesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  getNotificationPreferences() {
    throw UnimplementedError('getNotificationPreferences has not been implemented.');
  }

  Stream<Result<NotificationSettingsModel>> get getNotificationPreferencesStream {
    throw UnimplementedError('getGetNotificationPreferencesStream has not been implemented.');
  }
}
