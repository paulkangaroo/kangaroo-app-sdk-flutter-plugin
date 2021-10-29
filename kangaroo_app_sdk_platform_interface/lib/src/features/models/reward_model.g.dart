// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) => RewardModel(
      id: json['id'] as int,
      points: json['points'] as int?,
      publishAt: json['publish_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      isPublished: json['is_published'] as bool?,
      amount: (json['amount'] as num?)?.toDouble(),
      realValue: (json['real_value'] as num?)?.toDouble(),
      discountValue: (json['discount_value'] as num?)?.toDouble(),
      partnerReward: json['partner_reward'] as bool?,
      redeemForGiftCard: json['redeem_for_gift_card'] as bool?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      neverExpiresFlag: json['never_expires_flag'] as bool?,
      termsConditions: json['terms_conditions'] as String?,
      link: json['link'] as String?,
      rewardLanguages: (json['reward_languages'] as List<dynamic>?)
          ?.map((e) => RewardTranslation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RewardModelToJson(RewardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'publish_at': instance.publishAt,
      'expires_at': instance.expiresAt,
      'is_published': instance.isPublished,
      'amount': instance.amount,
      'real_value': instance.realValue,
      'discount_value': instance.discountValue,
      'partner_reward': instance.partnerReward,
      'redeem_for_gift_card': instance.redeemForGiftCard,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'never_expires_flag': instance.neverExpiresFlag,
      'terms_conditions': instance.termsConditions,
      'link': instance.link,
      'reward_languages':
          instance.rewardLanguages?.map((e) => e.toJson()).toList(),
    };
