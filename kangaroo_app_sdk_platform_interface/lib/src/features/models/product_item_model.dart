/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/images.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

part 'product_item_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ProductItemModel {
  final int? id;

  final String? title;

  final String? description;

  final List<Images>? images;

  final String? productSku;

  final String? termsConditions;

  final String? link;

  final List<Languages>? productLanguages;

  ProductItemModel({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.productSku,
    required this.termsConditions,
    required this.link,
    required this.productLanguages,
  });

  factory ProductItemModel.fromJson(Map<String, dynamic> data) => _$ProductItemModelFromJson(data);

  Map<String, dynamic> toJson() => _$ProductItemModelToJson(this);
}


