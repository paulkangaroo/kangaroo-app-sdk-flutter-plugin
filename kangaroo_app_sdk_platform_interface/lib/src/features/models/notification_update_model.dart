/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_update_response_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/notification_update_response_data.dart';

part 'notification_update_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class NotificationUpdateModel {
  final List<NotificationUpdateResponseData> data;

  NotificationUpdateModel({
    required this.data,
  });

  factory NotificationUpdateModel.fromJson(Map<String, dynamic> data) => _$NotificationUpdateModelFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationUpdateModelToJson(this);
}


