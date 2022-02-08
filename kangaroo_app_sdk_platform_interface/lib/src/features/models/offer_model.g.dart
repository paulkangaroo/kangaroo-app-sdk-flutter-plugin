// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OfferModel',
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
            'coupon_convertible',
            'real_value',
            'discount_value',
            'multip_factor',
            'min_purchase',
            'max_purchase',
            'apps_only',
            'offer_frequency_id',
            'freq_details',
            'peak_from',
            'peak_to',
            'type',
            'title',
            'description',
            'slug',
            'images',
            'never_expires_flag',
            'terms_conditions',
            'link',
            'offer_languages',
            'actions'
          ],
        );
        final val = OfferModel(
          id: $checkedConvert('id', (v) => v as int),
          points: $checkedConvert('points', (v) => v as int?),
          publishAt: $checkedConvert('publish_at', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
          isPublished: $checkedConvert('is_published', (v) => v as bool?),
          couponConvertible:
              $checkedConvert('coupon_convertible', (v) => v as bool?),
          realValue:
              $checkedConvert('real_value', (v) => (v as num?)?.toDouble()),
          discountValue:
              $checkedConvert('discount_value', (v) => (v as num?)?.toDouble()),
          multipFactor:
              $checkedConvert('multip_factor', (v) => (v as num?)?.toDouble()),
          minPurchase:
              $checkedConvert('min_purchase', (v) => (v as num?)?.toDouble()),
          maxPurchase:
              $checkedConvert('max_purchase', (v) => (v as num?)?.toDouble()),
          appsOnly: $checkedConvert('apps_only', (v) => v as bool?),
          offerFrequencyId:
              $checkedConvert('offer_frequency_id', (v) => v as int?),
          freqDetails: $checkedConvert('freq_details',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          peakFrom: $checkedConvert('peak_from', (v) => v as String?),
          peakTo: $checkedConvert('peak_to', (v) => v as String?),
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
          offerLanguages: $checkedConvert(
              'offer_languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      OfferTranslation.fromJson(e as Map<String, dynamic>))
                  .toList()),
          actions: $checkedConvert(
              'actions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OfferAction.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'publishAt': 'publish_at',
        'expiresAt': 'expires_at',
        'isPublished': 'is_published',
        'couponConvertible': 'coupon_convertible',
        'realValue': 'real_value',
        'discountValue': 'discount_value',
        'multipFactor': 'multip_factor',
        'minPurchase': 'min_purchase',
        'maxPurchase': 'max_purchase',
        'appsOnly': 'apps_only',
        'offerFrequencyId': 'offer_frequency_id',
        'freqDetails': 'freq_details',
        'peakFrom': 'peak_from',
        'peakTo': 'peak_to',
        'neverExpiresFlag': 'never_expires_flag',
        'termsConditions': 'terms_conditions',
        'offerLanguages': 'offer_languages'
      },
    );

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
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
