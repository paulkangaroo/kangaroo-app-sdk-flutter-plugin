/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'external_product_variation_value.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductVariationValue {
  @JsonKey(name: "index")
  final int? index;

  @JsonKey(name: "value")
  final int? value;

  ExternalProductVariationValue({
    required this.index,
    required this.value,
  });

  factory ExternalProductVariationValue.fromJson(Map<String, dynamic> data) => _$ExternalProductVariationValueFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductVariationValueToJson(this);
}


