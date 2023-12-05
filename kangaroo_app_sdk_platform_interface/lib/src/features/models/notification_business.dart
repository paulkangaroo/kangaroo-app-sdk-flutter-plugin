/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_business_settings.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_business_settings.dart';

part 'notification_business.g.dart';

/// The business who these settings this affect. This is not required when updating notification settings. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class NotificationBusiness {
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "settings")
  final NotificationBusinessSettings? settings;

  NotificationBusiness({
    required this.id,
    required this.name,
    required this.settings,
  });

  factory NotificationBusiness.fromJson(Map<String, dynamic> data) => _$NotificationBusinessFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationBusinessToJson(this);
}


