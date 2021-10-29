// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSku: json['product_sku'] as String?,
      actualPrice: (json['actual_price'] as num?)?.toDouble(),
      realPrice: (json['real_price'] as num?)?.toDouble(),
      termsConditions: json['terms_conditions'] as String?,
      link: json['link'] as String?,
      productLanguages: (json['product_languages'] as List<dynamic>?)
          ?.map((e) => Languages.fromJson(e as Map<String, dynamic>))
          .toList(),
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
