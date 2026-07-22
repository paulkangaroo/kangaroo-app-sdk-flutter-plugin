// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductImage _$ExternalProductImageFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductImage',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'altText',
            'original',
            'large',
            'medium',
            'small',
            'thumbnail'
          ],
        );
        final val = ExternalProductImage(
          altText: $checkedConvert('altText', (v) => v as String?),
          original: $checkedConvert(
              'original',
              (v) => v == null
                  ? null
                  : ExternalProductImageSize.fromJson(
                      v as Map<String, dynamic>)),
          large: $checkedConvert(
              'large',
              (v) => v == null
                  ? null
                  : ExternalProductImageSize.fromJson(
                      v as Map<String, dynamic>)),
          medium: $checkedConvert(
              'medium',
              (v) => v == null
                  ? null
                  : ExternalProductImageSize.fromJson(
                      v as Map<String, dynamic>)),
          small: $checkedConvert(
              'small',
              (v) => v == null
                  ? null
                  : ExternalProductImageSize.fromJson(
                      v as Map<String, dynamic>)),
          thumbnail: $checkedConvert(
              'thumbnail',
              (v) => v == null
                  ? null
                  : ExternalProductImageSize.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductImageToJson(
        ExternalProductImage instance) =>
    <String, dynamic>{
      'altText': instance.altText,
      'original': instance.original?.toJson(),
      'large': instance.large?.toJson(),
      'medium': instance.medium?.toJson(),
      'small': instance.small?.toJson(),
      'thumbnail': instance.thumbnail?.toJson(),
    };
