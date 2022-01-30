/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';


part 'notification_update_response_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class NotificationUpdateResponseData {
  final String id;

  final Business business;

  final bool? allowEmail;

  final bool? allowSms;

  final bool? allowPush;

  NotificationUpdateResponseData({
    required this.id,
required this.business,
    required this.allowEmail,
    required this.allowSms,
    required this.allowPush,
  });

  factory NotificationUpdateResponseData.fromJson(Map<String, dynamic> data) => _$NotificationUpdateResponseDataFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationUpdateResponseDataToJson(this);
}


