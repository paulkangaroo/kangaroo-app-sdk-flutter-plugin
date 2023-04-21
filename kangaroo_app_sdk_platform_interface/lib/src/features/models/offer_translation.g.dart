// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferTranslation _$OfferTranslationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OfferTranslation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'language_id',
            'offer_title',
            'offer_description',
            'offer_terms_conditions',
            'offer_link',
            'coupon_title',
            'coupon_description',
            'coupon_terms_conditions',
            'coupon_link',
            'coupon_available_at',
            'language'
          ],
        );
        final val = OfferTranslation(
          id: $checkedConvert('id', (v) => v as int),
          languageId: $checkedConvert('language_id', (v) => v as int?),
          offerTitle: $checkedConvert('offer_title', (v) => v as String?),
          offerDescription:
              $checkedConvert('offer_description', (v) => v as String?),
          offerTermsConditions:
              $checkedConvert('offer_terms_conditions', (v) => v as String?),
          offerLink: $checkedConvert('offer_link', (v) => v as String?),
          couponTitle: $checkedConvert('coupon_title', (v) => v as String?),
          couponDescription:
              $checkedConvert('coupon_description', (v) => v as String?),
          couponTermsConditions:
              $checkedConvert('coupon_terms_conditions', (v) => v as String?),
          couponLink: $checkedConvert('coupon_link', (v) => v as String?),
          couponAvailableAt:
              $checkedConvert('coupon_available_at', (v) => v as String?),
          language: $checkedConvert(
              'language',
              (v) => v == null
                  ? null
                  : Language.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'languageId': 'language_id',
        'offerTitle': 'offer_title',
        'offerDescription': 'offer_description',
        'offerTermsConditions': 'offer_terms_conditions',
        'offerLink': 'offer_link',
        'couponTitle': 'coupon_title',
        'couponDescription': 'coupon_description',
        'couponTermsConditions': 'coupon_terms_conditions',
        'couponLink': 'coupon_link',
        'couponAvailableAt': 'coupon_available_at'
      },
    );

Map<String, dynamic> _$OfferTranslationToJson(OfferTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'offer_title': instance.offerTitle,
      'offer_description': instance.offerDescription,
      'offer_terms_conditions': instance.offerTermsConditions,
      'offer_link': instance.offerLink,
      'coupon_title': instance.couponTitle,
      'coupon_description': instance.couponDescription,
      'coupon_terms_conditions': instance.couponTermsConditions,
      'coupon_link': instance.couponLink,
      'coupon_available_at': instance.couponAvailableAt,
      'language': instance.language?.toJson(),
    };
