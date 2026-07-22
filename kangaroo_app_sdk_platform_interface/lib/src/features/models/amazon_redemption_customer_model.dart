/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'amazon_redemption_customer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class AmazonRedemptionCustomerModel {
  @JsonKey(name: "id")
  final String id;

  AmazonRedemptionCustomerModel({
    required this.id,
  });

  factory AmazonRedemptionCustomerModel.fromJson(Map<String, dynamic> data) => _$AmazonRedemptionCustomerModelFromJson(data);

  Map<String, dynamic> toJson() => _$AmazonRedemptionCustomerModelToJson(this);
}


