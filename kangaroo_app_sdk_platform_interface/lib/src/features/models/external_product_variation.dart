/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_variation_value.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_variation_value.dart';

part 'external_product_variation.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductVariation {
  @JsonKey(name: "asin")
  final String? asin;

  @JsonKey(name: "variationValues")
  final List<ExternalProductVariationValue>? variationValues;

  ExternalProductVariation({
    required this.asin,
    required this.variationValues,
  });

  factory ExternalProductVariation.fromJson(Map<String, dynamic> data) => _$ExternalProductVariationFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductVariationToJson(this);
}


