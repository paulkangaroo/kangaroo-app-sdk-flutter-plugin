/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_settings_data.dart';

part 'notification_settings_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class NotificationSettingsModel {
  final List<NotificationSettingsData>? data;

  NotificationSettingsModel({
    required this.data,
  });

  factory NotificationSettingsModel.fromJson(Map<String, dynamic> data) => _$NotificationSettingsModelFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationSettingsModelToJson(this);
}


