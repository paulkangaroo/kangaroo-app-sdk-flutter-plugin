/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business.dart';


part 'notification_preferences_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class NotificationPreferencesRequest {
  final String id;

  ///The business who&#39;s notification settings this request applies to.  
  final Business business;

  final bool? allowEmail;

  final bool? allowSms;

  final bool? allowPush;

  NotificationPreferencesRequest({
    required this.id,
required this.business,
    required this.allowEmail,
    required this.allowSms,
    required this.allowPush,
  });

  factory NotificationPreferencesRequest.fromJson(Map<String, dynamic> data) => _$NotificationPreferencesRequestFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationPreferencesRequestToJson(this);
}


