/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'balance_details_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BalanceDetailsModel {
  @JsonKey(name: "points")
  final double? points;

  @JsonKey(name: "giftcard")
  final double? giftcard;

  BalanceDetailsModel({
    required this.points,
    required this.giftcard,
  });

  factory BalanceDetailsModel.fromJson(Map<String, dynamic> data) => _$BalanceDetailsModelFromJson(data);

  Map<String, dynamic> toJson() => _$BalanceDetailsModelToJson(this);
}


