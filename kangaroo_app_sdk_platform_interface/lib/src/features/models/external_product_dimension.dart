/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_dimension_value.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_dimension_value.dart';

part 'external_product_dimension.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductDimension {
  @JsonKey(name: "index")
  final int? index;

  @JsonKey(name: "displayString")
  final String? displayString;

  @JsonKey(name: "dimensionValues")
  final List<ExternalProductDimensionValue>? dimensionValues;

  ExternalProductDimension({
    required this.index,
    required this.displayString,
    required this.dimensionValues,
  });

  factory ExternalProductDimension.fromJson(Map<String, dynamic> data) => _$ExternalProductDimensionFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductDimensionToJson(this);
}


