/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'notification_business_settings.g.dart';

/// The settings of this business. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class NotificationBusinessSettings {
  @JsonKey(name: "double_opt_in")
  final bool? doubleOptIn;

  NotificationBusinessSettings({
    required this.doubleOptIn,
  });

  factory NotificationBusinessSettings.fromJson(Map<String, dynamic> data) => _$NotificationBusinessSettingsFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationBusinessSettingsToJson(this);
}


