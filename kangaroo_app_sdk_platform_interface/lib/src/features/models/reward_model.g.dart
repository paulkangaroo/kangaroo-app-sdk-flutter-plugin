// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'RewardModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'points',
            'publish_at',
            'expires_at',
            'is_published',
            'amount',
            'real_value',
            'discount_value',
            'partner_reward',
            'partner_reward_type',
            'redeem_for_gift_card',
            'type',
            'title',
            'description',
            'slug',
            'images',
            'never_expires_flag',
            'terms_conditions',
            'link',
            'reward_languages'
          ],
        );
        final val = RewardModel(
          id: $checkedConvert('id', (v) => v as int?),
          points: $checkedConvert('points', (v) => v as int?),
          publishAt: $checkedConvert('publish_at', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
          isPublished: $checkedConvert('is_published', (v) => v as bool?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          realValue:
              $checkedConvert('real_value', (v) => (v as num?)?.toDouble()),
          discountValue:
              $checkedConvert('discount_value', (v) => (v as num?)?.toDouble()),
          partnerReward: $checkedConvert('partner_reward', (v) => v as bool?),
          partnerRewardType:
              $checkedConvert('partner_reward_type', (v) => v as int?),
          redeemForGiftCard:
              $checkedConvert('redeem_for_gift_card', (v) => v as bool?),
          type: $checkedConvert('type', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String?),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
                  .toList()),
          neverExpiresFlag:
              $checkedConvert('never_expires_flag', (v) => v as bool?),
          termsConditions:
              $checkedConvert('terms_conditions', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          rewardLanguages: $checkedConvert(
              'reward_languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      RewardTranslation.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'publishAt': 'publish_at',
        'expiresAt': 'expires_at',
        'isPublished': 'is_published',
        'realValue': 'real_value',
        'discountValue': 'discount_value',
        'partnerReward': 'partner_reward',
        'partnerRewardType': 'partner_reward_type',
        'redeemForGiftCard': 'redeem_for_gift_card',
        'neverExpiresFlag': 'never_expires_flag',
        'termsConditions': 'terms_conditions',
        'rewardLanguages': 'reward_languages'
      },
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
      'partner_reward_type': instance.partnerRewardType,
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
