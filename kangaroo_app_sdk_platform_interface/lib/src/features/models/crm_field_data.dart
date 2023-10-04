/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'crm_field_data.g.dart';

/// CRM Field data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CrmFieldData {
  final int? id;

  final String? name;

  final String? label;

  final String? value;

  final bool? isHidden;

  final bool? isRequired;

  final String? fieldType;

  final bool? isCustomField;

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


