/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'prize_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PrizeModel {
  ///fill style color 
  final String? fillStyle;

  ///prize name 
  final String? text;

  ///prize description 
  final String? desc;

  ///prize id 
  final int? prizeId;

  PrizeModel({
    required this.fillStyle,
    required this.text,
    required this.desc,
    required this.prizeId,
  });

  factory PrizeModel.fromJson(Map<String, dynamic> data) => _$PrizeModelFromJson(data);

  Map<String, dynamic> toJson() => _$PrizeModelToJson(this);
}


