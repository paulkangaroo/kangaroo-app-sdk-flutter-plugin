library kangaroo_app_sdk_platform_interface;

import 'dart:convert';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';
import 'package:kangaroo_app_sdk_platform_interface/platform_interface/base_platform_interface.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/user_business_notifications/user_business_notifications_api_implementation.dart';




import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_notifications_model.dart';
export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_notifications_model.dart';

abstract class UserBusinessNotificationsApiInterface extends PlatformInterface {
  UserBusinessNotificationsApiInterface() : super(token: _token);

  static final Object _token = Object();

  static UserBusinessNotificationsApiInterface _instance = UserBusinessNotificationsApiFederated();

  static UserBusinessNotificationsApiInterface get instance => _instance;

  static set instance(UserBusinessNotificationsApiInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

Future<Result<UserBusinessNotificationsModel>?> getUserBusinessNotifications({ 
        final Map<String, String>? overrideHeaders,
        required final String businessId,
    }) {
    throw UnimplementedError('getUserBusinessNotifications has not been implemented.');
  }

  Stream<Result<UserBusinessNotificationsModel>> get userBusinessNotificationsStream {
    throw UnimplementedError('getUserBusinessNotificationsStream has not been implemented.');
  }

  static Future<Result<UserBusinessNotificationsModel>?> deSerializedPlatformResponse(
    Future<String?> response,
  ) async {
    final serializedResult = await response;
    if (serializedResult != null) {
      dynamic result;
      try {
        result = UserBusinessNotificationsModel.fromJson(jsonDecode(serializedResult));
      } catch (error) {
        result = State.fromJson(jsonDecode(serializedResult));
      }
      switch (result.runtimeType) {
        case UserBusinessNotificationsModel:
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
