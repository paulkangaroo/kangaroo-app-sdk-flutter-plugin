/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'offer_redemption_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OfferRedemptionModel {
  ///A unique ID identifying this offer. 
  @JsonKey(name: "id")
  final int id;

  OfferRedemptionModel({
    required this.id,
  });

  factory OfferRedemptionModel.fromJson(Map<String, dynamic> data) => _$OfferRedemptionModelFromJson(data);

  Map<String, dynamic> toJson() => _$OfferRedemptionModelToJson(this);
}


