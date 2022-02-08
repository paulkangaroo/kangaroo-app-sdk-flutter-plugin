// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardTranslation _$GiftCardTranslationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GiftCardTranslation',
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
            'language'
          ],
        );
        final val = GiftCardTranslation(
          id: $checkedConvert('id', (v) => v as int),
          languageId: $checkedConvert('language_id', (v) => v as int?),
          offerTitle: $checkedConvert('offer_title', (v) => v as String?),
          offerDescription:
              $checkedConvert('offer_description', (v) => v as String?),
          offerTermsConditions:
              $checkedConvert('offer_terms_conditions', (v) => v as String?),
          offerLink: $checkedConvert('offer_link', (v) => v as String?),
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
        'offerLink': 'offer_link'
      },
    );

Map<String, dynamic> _$GiftCardTranslationToJson(
        GiftCardTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'offer_title': instance.offerTitle,
      'offer_description': instance.offerDescription,
      'offer_terms_conditions': instance.offerTermsConditions,
      'offer_link': instance.offerLink,
      'language': instance.language?.toJson(),
    };
