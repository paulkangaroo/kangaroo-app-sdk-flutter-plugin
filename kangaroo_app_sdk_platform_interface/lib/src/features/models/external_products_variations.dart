/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_dimension.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_variation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_dimension.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_variation.dart';

part 'external_products_variations.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductsVariations {
  @JsonKey(name: "dimensions")
  final List<ExternalProductDimension>? dimensions;

  @JsonKey(name: "variations")
  final List<ExternalProductVariation>? variations;

  ExternalProductsVariations({
    required this.dimensions,
    required this.variations,
  });

  factory ExternalProductsVariations.fromJson(Map<String, dynamic> data) => _$ExternalProductsVariationsFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductsVariationsToJson(this);
}


