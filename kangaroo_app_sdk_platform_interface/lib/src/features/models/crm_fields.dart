/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_field_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/crm_field_data.dart';

part 'crm_fields.g.dart';

/// A list of the business crm fields. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CrmFields {
  ///A list of the business crm fields. 
  @JsonKey(name: "data")
  final List<CrmFieldData>? data;

  CrmFields({
    required this.data,
  });

  factory CrmFields.fromJson(Map<String, dynamic> data) => _$CrmFieldsFromJson(data);

  Map<String, dynamic> toJson() => _$CrmFieldsToJson(this);
}


