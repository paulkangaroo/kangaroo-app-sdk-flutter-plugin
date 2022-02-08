/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_translation.dart';

part 'reward_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class RewardModel {
  ///A unique ID identifying this reward 
  final int? id;

  final int? points;

  final String? publishAt;

  final String? expiresAt;

  final bool? isPublished;

  final double? amount;

  final double? realValue;

  final double? discountValue;

  final bool? partnerReward;

  final bool? redeemForGiftCard;

  final String? type;

  final String? title;

  final String? description;

  final String? slug;

  final List<Image>? images;

  final bool? neverExpiresFlag;

  final String? termsConditions;

  final String? link;

  final List<RewardTranslation>? rewardLanguages;

  RewardModel({
    required this.id,
    required this.points,
    required this.publishAt,
    required this.expiresAt,
    required this.isPublished,
    required this.amount,
    required this.realValue,
    required this.discountValue,
    required this.partnerReward,
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
  });

  factory RewardModel.fromJson(Map<String, dynamic> data) => _$RewardModelFromJson(data);

  Map<String, dynamic> toJson() => _$RewardModelToJson(this);
}


