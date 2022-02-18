/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'check_in_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CheckInDataModel {
  final int? id;

  final double? amount;

  final int? points;

  final String? name;

  final String? createdAt;

  final String? updatedAt;

  CheckInDataModel({
    required this.id,
    required this.amount,
    required this.points,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CheckInDataModel.fromJson(Map<String, dynamic> data) => _$CheckInDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$CheckInDataModelToJson(this);
}


