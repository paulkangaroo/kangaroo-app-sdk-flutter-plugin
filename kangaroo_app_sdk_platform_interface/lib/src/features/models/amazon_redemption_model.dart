/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'amazon_redemption_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class AmazonRedemptionModel {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "quantity")
  final int quantity;

  @JsonKey(name: "external_product_id")
  final String externalProductId;

  AmazonRedemptionModel({
    required this.id,
required this.quantity,
required this.externalProductId,
  });

  factory AmazonRedemptionModel.fromJson(Map<String, dynamic> data) => _$AmazonRedemptionModelFromJson(data);

  Map<String, dynamic> toJson() => _$AmazonRedemptionModelToJson(this);
}


