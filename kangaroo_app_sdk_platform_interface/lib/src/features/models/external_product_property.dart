/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'external_product_property.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductProperty {
  @JsonKey(name: "displayString")
  final String? displayString;

  @JsonKey(name: "value")
  final String? value;

  ExternalProductProperty({
    required this.displayString,
    required this.value,
  });

  factory ExternalProductProperty.fromJson(Map<String, dynamic> data) => _$ExternalProductPropertyFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductPropertyToJson(this);
}


