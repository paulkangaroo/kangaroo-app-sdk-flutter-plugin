/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'business_action_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BusinessActionModel {
  final int? id;

  final int? points;

  final int? actionId;

  BusinessActionModel({
    required this.id,
    required this.points,
    required this.actionId,
  });

  factory BusinessActionModel.fromJson(Map<String, dynamic> data) => _$BusinessActionModelFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessActionModelToJson(this);
}


