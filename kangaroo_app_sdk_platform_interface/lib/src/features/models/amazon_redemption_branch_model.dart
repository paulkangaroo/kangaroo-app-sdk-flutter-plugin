/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'amazon_redemption_branch_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class AmazonRedemptionBranchModel {
  @JsonKey(name: "id")
  final String id;

  AmazonRedemptionBranchModel({
    required this.id,
  });

  factory AmazonRedemptionBranchModel.fromJson(Map<String, dynamic> data) => _$AmazonRedemptionBranchModelFromJson(data);

  Map<String, dynamic> toJson() => _$AmazonRedemptionBranchModelToJson(this);
}


