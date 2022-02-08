/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'frequent_buyer_program_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class FrequentBuyerProgramModel {
  final int? id;

  final bool? enabled;

  final String? title;

  final int? buyUnits;

  final int? getUnits;

  final int? resetInterval;

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


