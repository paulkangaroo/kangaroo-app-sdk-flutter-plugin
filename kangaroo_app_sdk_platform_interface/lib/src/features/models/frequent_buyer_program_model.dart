/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'frequent_buyer_program_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class FrequentBuyerProgramModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "enabled")
  final bool? enabled;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "buy_units")
  final int? buyUnits;

  @JsonKey(name: "get_units")
  final int? getUnits;

  @JsonKey(name: "reset_interval")
  final int? resetInterval;

  @JsonKey(name: "created_at")
  final String? createdAt;

  FrequentBuyerProgramModel({
    required this.id,
    required this.enabled,
    required this.title,
    required this.buyUnits,
    required this.getUnits,
    required this.resetInterval,
    required this.createdAt,
  });

  factory FrequentBuyerProgramModel.fromJson(Map<String, dynamic> data) => _$FrequentBuyerProgramModelFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerProgramModelToJson(this);
}


