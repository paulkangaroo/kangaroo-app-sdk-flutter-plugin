/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_products_variations.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_property.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_products_variations.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_property.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image.dart';


part 'external_products.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProducts {
  @JsonKey(name: "integration_id")
  final int? integrationId;

  @JsonKey(name: "id")
  final String? id;

  @JsonKey(name: "type")
  final String? type;

  @JsonKey(name: "title")
  final String? title;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "variations")
  final ExternalProductsVariations? variations;

  @JsonKey(name: "properties")
  final List<ExternalProductProperty>? properties;

  @JsonKey(name: "images")
  final List<ExternalProductImage>? images;

  @JsonKey(name: "price")
  final double? price;

  @JsonKey(name: "points")
  final int? points;

  ExternalProducts({
    required this.integrationId,
    required this.id,
    required this.type,
    required this.title,
    required this.url,
    required this.variations,
    required this.properties,
    required this.images,
    required this.price,
    required this.points,
  });

  factory ExternalProducts.fromJson(Map<String, dynamic> data) => _$ExternalProductsFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductsToJson(this);
}


