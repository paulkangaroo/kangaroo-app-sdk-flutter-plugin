/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'notification_business_payload.g.dart';

/// The business who these settings this affect. This is not required when updating notification settings. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class NotificationBusinessPayload {
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "name")
  final String? name;

  NotificationBusinessPayload({
    required this.id,
    required this.name,
  });

  factory NotificationBusinessPayload.fromJson(Map<String, dynamic> data) => _$NotificationBusinessPayloadFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationBusinessPayloadToJson(this);
}


