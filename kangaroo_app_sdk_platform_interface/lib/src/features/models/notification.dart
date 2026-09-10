/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'notification.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Notification {
  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "type_id")
  final int? typeId;

  @JsonKey(name: "type")
  final String? type;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "points")
  final int? points;

  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "hidden")
  final bool? hidden;

  @JsonKey(name: "created_at")
  final String? createdAt;

  Notification({
    required this.id,
    required this.typeId,
    required this.type,
    required this.title,
    required this.description,
    required this.points,
    required this.amount,
    required this.hidden,
    required this.createdAt,
  });

  factory Notification.fromJson(Map<String, dynamic> data) => _$NotificationFromJson(data);

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}


