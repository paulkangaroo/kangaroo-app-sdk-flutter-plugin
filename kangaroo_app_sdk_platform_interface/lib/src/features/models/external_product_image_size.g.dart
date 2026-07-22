// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'external_product_image_size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalProductImageSize _$ExternalProductImageSizeFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ExternalProductImageSize',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['height', 'url', 'width'],
        );
        final val = ExternalProductImageSize(
          height: $checkedConvert('height', (v) => (v as num?)?.toInt()),
          url: $checkedConvert('url', (v) => v as String?),
          width: $checkedConvert('width', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ExternalProductImageSizeToJson(
        ExternalProductImageSize instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };
