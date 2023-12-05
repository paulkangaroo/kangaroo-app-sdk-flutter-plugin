/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

part 'product.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Product {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "description")
  final String? description;

  @JsonKey(name: "images")
  final List<Images>? images;

  @JsonKey(name: "product_sku")
  final String? productSku;

  @JsonKey(name: "actual_price")
  final double? actualPrice;

  @JsonKey(name: "real_price")
  final double? realPrice;

  @JsonKey(name: "terms_conditions")
  final String? termsConditions;

  @JsonKey(name: "link")
  final String? link;

  @JsonKey(name: "product_languages")
  final List<Languages>? productLanguages;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.productSku,
    required this.actualPrice,
    required this.realPrice,
    required this.termsConditions,
    required this.link,
    required this.productLanguages,
  });

  factory Product.fromJson(Map<String, dynamic> data) => _$ProductFromJson(data);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}


