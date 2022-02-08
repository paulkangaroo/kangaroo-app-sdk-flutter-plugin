// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardModel _$GiftCardModelFromJson(Map<String, dynamic> json) =>
    GiftCardModel(
      id: json['id'] as int,
      points: json['points'] as int?,
      publishAt: json['publish_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      isPublished: json['is_published'] as bool?,
      couponConvertible: json['coupon_convertible'] as bool?,
      realValue: (json['real_value'] as num?)?.toDouble(),
      discountValue: (json['discount_value'] as num?)?.toDouble(),
      multipFactor: (json['multip_factor'] as num?)?.toDouble(),
      minPurchase: (json['min_purchase'] as num?)?.toDouble(),
      maxPurchase: (json['max_purchase'] as num?)?.toDouble(),
      appsOnly: json['apps_only'] as bool?,
      offerFrequencyId: json['offer_frequency_id'] as int?,
      freqDetails: (json['freq_details'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      peakFrom: json['peak_from'] as String?,
      peakTo: json['peak_to'] as String?,
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
      offerLanguages: (json['offer_languages'] as List<dynamic>?)
          ?.map((e) => GiftCardTranslation.fromJson(e as Map<String, dynamic>))
          .toList(),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => GiftCardAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GiftCardModelToJson(GiftCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'points': instance.points,
      'publish_at': instance.publishAt,
      'expires_at': instance.expiresAt,
      'is_published': instance.isPublished,
      'coupon_convertible': instance.couponConvertible,
      'real_value': instance.realValue,
      'discount_value': instance.discountValue,
      'multip_factor': instance.multipFactor,
      'min_purchase': instance.minPurchase,
      'max_purchase': instance.maxPurchase,
      'apps_only': instance.appsOnly,
      'offer_frequency_id': instance.offerFrequencyId,
      'freq_details': instance.freqDetails,
      'peak_from': instance.peakFrom,
      'peak_to': instance.peakTo,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'slug': instance.slug,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'never_expires_flag': instance.neverExpiresFlag,
      'terms_conditions': instance.termsConditions,
      'link': instance.link,
      'offer_languages':
          instance.offerLanguages?.map((e) => e.toJson()).toList(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
    };
