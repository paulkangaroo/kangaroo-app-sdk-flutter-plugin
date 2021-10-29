// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_products_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProductsIncluded _$UserProductsIncludedFromJson(
        Map<String, dynamic> json) =>
    UserProductsIncluded(
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserProductsIncludedToJson(
        UserProductsIncluded instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
