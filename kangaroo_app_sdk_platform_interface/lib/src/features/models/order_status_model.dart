/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'order_status_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OrderStatusModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "type_id")
  final int? typeId;

  @JsonKey(name: "type")
  final String? type;

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

  @JsonKey(name: "archived")
  final bool? archived;

  OrderStatusModel({
    required this.id,
    required this.typeId,
    required this.type,
    required this.description,
    required this.points,
    required this.amount,
    required this.hidden,
    required this.createdAt,
    required this.archived,
  });

  factory OrderStatusModel.fromJson(Map<String, dynamic> data) => _$OrderStatusModelFromJson(data);

  Map<String, dynamic> toJson() => _$OrderStatusModelToJson(this);
}


