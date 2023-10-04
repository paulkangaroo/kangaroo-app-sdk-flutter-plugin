/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_business.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_business.dart';


part 'notification_settings_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class NotificationSettingsData {
  ///The notification settings id. This is not required when updating notification settings.  
  final String? id;

  final NotificationBusiness? business;

  final bool? allowEmail;

  final bool? allowSms;

  final bool? allowPush;

  final int? allowSmsStatus;

  NotificationSettingsData({
    required this.id,
    required this.business,
    required this.allowEmail,
    required this.allowSms,
    required this.allowPush,
    required this.allowSmsStatus,
  });

  factory NotificationSettingsData.fromJson(Map<String, dynamic> data) => _$NotificationSettingsDataFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationSettingsDataToJson(this);
}


