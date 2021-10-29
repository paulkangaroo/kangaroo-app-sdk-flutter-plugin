library kangaroo_app_sdk_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_notification_preferences_update/update_notification_preferences_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_preferences_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_preferences_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_update_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_update_model.dart';

abstract class UpdateNotificationPreferencesApiInterface extends PlatformInterface {
  UpdateNotificationPreferencesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UpdateNotificationPreferencesApiInterface _instance = UpdateNotificationPreferencesApiFederated();

  static UpdateNotificationPreferencesApiInterface get instance => _instance;

  static set instance(UpdateNotificationPreferencesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  updateNotificationPreferences({ 
        required final NotificationPreferencesRequest notificationPreferencesRequest,
    }) {
    throw UnimplementedError('updateNotificationPreferences has not been implemented.');
  }

  Stream<Result<NotificationUpdateModel>> get updateNotificationPreferencesStream {
    throw UnimplementedError('getUpdateNotificationPreferencesStream has not been implemented.');
  }
}
