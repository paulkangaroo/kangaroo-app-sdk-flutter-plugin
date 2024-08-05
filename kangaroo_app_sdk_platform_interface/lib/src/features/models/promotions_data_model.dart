/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

part 'promotions_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PromotionsDataModel {
  ///id of the campaign. 
  @JsonKey(name: "id")
  final int? id;

  ///name of the campaign 
  @JsonKey(name: "name")
  final String? name;

  ///A list of all offers available in this campaign 
  @JsonKey(name: "offers")
  final List<OfferModel>? offers;

  ///A list of all rewards available in this campaign 
  @JsonKey(name: "rewards")
  final List<RewardModel>? rewards;

  PromotionsDataModel({
    required this.id,
    required this.name,
    required this.offers,
    required this.rewards,
  });

  factory PromotionsDataModel.fromJson(Map<String, dynamic> data) => _$PromotionsDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$PromotionsDataModelToJson(this);
}


