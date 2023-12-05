/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_translation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

part 'public_reward_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicRewardModel {
  ///A unique ID identifying this reward 
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "points")
  final int? points;

  @JsonKey(name: "publish_at")
  final String? publishAt;

  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @JsonKey(name: "is_published")
  final bool? isPublished;

  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "real_value")
  final double? realValue;

  @JsonKey(name: "discount_value")
  final double? discountValue;

  @JsonKey(name: "partner_reward")
  final bool? partnerReward;

  @JsonKey(name: "partner_reward_type")
  final int? partnerRewardType;

  @JsonKey(name: "redeem_for_gift_card")
  final bool? redeemForGiftCard;

  @JsonKey(name: "type")
  final String? type;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "slug")
  final String? slug;

  @JsonKey(name: "images")
  final List<Image>? images;

  @JsonKey(name: "never_expires_flag")
  final bool? neverExpiresFlag;

  @JsonKey(name: "terms_conditions")
  final String? termsConditions;

  @JsonKey(name: "link")
  final String? link;

  @JsonKey(name: "reward_languages")
  final List<RewardTranslation>? rewardLanguages;

  @JsonKey(name: "branch")
  final Branch? branch;

  PublicRewardModel({
    required this.id,
    required this.points,
    required this.publishAt,
    required this.expiresAt,
    required this.isPublished,
    required this.amount,
    required this.realValue,
    required this.discountValue,
    required this.partnerReward,
    required this.partnerRewardType,
    required this.redeemForGiftCard,
    required this.type,
    required this.title,
    required this.description,
    required this.slug,
    required this.images,
    required this.neverExpiresFlag,
    required this.termsConditions,
    required this.link,
    required this.rewardLanguages,
    required this.branch,
  });

  factory PublicRewardModel.fromJson(Map<String, dynamic> data) => _$PublicRewardModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicRewardModelToJson(this);
}


