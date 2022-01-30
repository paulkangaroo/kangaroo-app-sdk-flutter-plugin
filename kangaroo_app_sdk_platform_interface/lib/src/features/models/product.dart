/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

part 'product.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Product {
  final int? id;

  final String? title;

  final String? description;

  final List<Images>? images;

  final String? productSku;

  final double? actualPrice;

  final double? realPrice;

  final String? termsConditions;

  final String? link;

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


