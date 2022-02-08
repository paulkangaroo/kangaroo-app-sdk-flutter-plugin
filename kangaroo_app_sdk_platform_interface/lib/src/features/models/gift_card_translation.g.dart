// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardTranslation _$GiftCardTranslationFromJson(Map<String, dynamic> json) =>
    GiftCardTranslation(
      id: json['id'] as int,
      languageId: json['language_id'] as int?,
      offerTitle: json['offer_title'] as String?,
      offerDescription: json['offer_description'] as String?,
      offerTermsConditions: json['offer_terms_conditions'] as String?,
      offerLink: json['offer_link'] as String?,
      language: json['language'] == null
          ? null
          : Language.fromJson(json['language'] as Map<String, dynamic>),
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
