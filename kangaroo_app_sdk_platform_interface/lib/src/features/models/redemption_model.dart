/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'redemption_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class RedemptionModel {
  ///A unique ID identifying this reward. 
  @JsonKey(name: "id")
  final int id;

  ///The amount of times to redeem this reward 
  @JsonKey(name: "quantity")
  final int quantity;

  RedemptionModel({
    required this.id,
required this.quantity,
  });

  factory RedemptionModel.fromJson(Map<String, dynamic> data) => _$RedemptionModelFromJson(data);

  Map<String, dynamic> toJson() => _$RedemptionModelToJson(this);
}


