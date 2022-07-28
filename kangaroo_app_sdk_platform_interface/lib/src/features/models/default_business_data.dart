/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'default_business_data.g.dart';

/// Default Business id data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DefaultBusinessData {
  ///Unique branch Id 
  final String? defaultBranchId;

  ///Unique business Id 
  final String? defaultBusinessId;

  DefaultBusinessData({
    required this.defaultBranchId,
    required this.defaultBusinessId,
  });

  factory DefaultBusinessData.fromJson(Map<String, dynamic> data) => _$DefaultBusinessDataFromJson(data);

  Map<String, dynamic> toJson() => _$DefaultBusinessDataToJson(this);
}


