/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'crm_field_data.g.dart';

/// CRM Field data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CrmFieldData {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "name")
  final String? name;

  @JsonKey(name: "label")
  final String? label;

  @JsonKey(name: "value")
  final String? value;

  @JsonKey(name: "is_hidden")
  final bool? isHidden;

  @JsonKey(name: "is_required")
  final bool? isRequired;

  @JsonKey(name: "field_type")
  final String? fieldType;

  @JsonKey(name: "is_custom_field")
  final bool? isCustomField;

  @JsonKey(name: "display_order")
  final int? displayOrder;

  CrmFieldData({
    required this.id,
    required this.name,
    required this.label,
    required this.value,
    required this.isHidden,
    required this.isRequired,
    required this.fieldType,
    required this.isCustomField,
    required this.displayOrder,
  });

  factory CrmFieldData.fromJson(Map<String, dynamic> data) => _$CrmFieldDataFromJson(data);

  Map<String, dynamic> toJson() => _$CrmFieldDataToJson(this);
}


