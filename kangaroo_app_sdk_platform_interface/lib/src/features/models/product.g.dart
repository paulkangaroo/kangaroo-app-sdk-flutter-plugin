// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Product',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'title',
            'description',
            'images',
            'product_sku',
            'actual_price',
            'real_price',
            'terms_conditions',
            'link',
            'product_languages'
          ],
        );
        final val = Product(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          images: $checkedConvert(
              'images',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
                  .toList()),
          productSku: $checkedConvert('product_sku', (v) => v as String?),
          actualPrice:
              $checkedConvert('actual_price', (v) => (v as num?)?.toDouble()),
          realPrice:
              $checkedConvert('real_price', (v) => (v as num?)?.toDouble()),
          termsConditions:
              $checkedConvert('terms_conditions', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          productLanguages: $checkedConvert(
              'product_languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'productSku': 'product_sku',
        'actualPrice': 'actual_price',
        'realPrice': 'real_price',
        'termsConditions': 'terms_conditions',
        'productLanguages': 'product_languages'
      },
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images?.map((e) => e.toJson()).toList(),
      'product_sku': instance.productSku,
      'actual_price': instance.actualPrice,
      'real_price': instance.realPrice,
      'terms_conditions': instance.termsConditions,
      'link': instance.link,
      'product_languages':
          instance.productLanguages?.map((e) => e.toJson()).toList(),
    };
