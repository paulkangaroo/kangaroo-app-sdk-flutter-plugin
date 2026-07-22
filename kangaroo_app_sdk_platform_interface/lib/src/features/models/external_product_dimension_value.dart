/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'external_product_dimension_value.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductDimensionValue {
  @JsonKey(name: "index")
  final int? index;

  @JsonKey(name: "displayString")
  final String? displayString;

  ExternalProductDimensionValue({
    required this.index,
    required this.displayString,
  });

  factory ExternalProductDimensionValue.fromJson(Map<String, dynamic> data) => _$ExternalProductDimensionValueFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductDimensionValueToJson(this);
}


