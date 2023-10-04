library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_notification_preferences_update/update_notification_preferences_api_implementation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_update_request.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_update_request.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_model.dart';

abstract class UpdateNotificationPreferencesApiInterface extends PlatformInterface {
  UpdateNotificationPreferencesApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UpdateNotificationPreferencesApiInterface _instance = UpdateNotificationPreferencesApiFederated();

  static UpdateNotificationPreferencesApiInterface get instance => _instance;

  static set instance(UpdateNotificationPreferencesApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<NotificationSettingsModel>?> updateNotificationPreferences({ 
        required final NotificationSettingsUpdateRequest notificationPreferencesRequest,
    }) {
    throw UnimplementedError('updateNotificationPreferences has not been implemented.');
  }

  Stream<Result<NotificationSettingsModel>> get updateNotificationPreferencesStream {
    throw UnimplementedError('getUpdateNotificationPreferencesStream has not been implemented.');
  }

  static Future<Result<NotificationSettingsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = NotificationSettingsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case NotificationSettingsModel:
          return Success(data: result);
        case State:
          return mapState(result as State);
        default:
          return Error(
            code: -1,
            message: "Result runtime type is unknown after deserialization",
          );
      }
    } else {
      return Error(code: -1, message: "Serialized result is null");
    }
  }
}
