/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/default_business_data.dart';

part 'default_business.g.dart';

/// Default business chosen by the user
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DefaultBusiness {
  ///Details about the default business 
  final DefaultBusinessData? data;

  DefaultBusiness({
    required this.data,
  });

  factory DefaultBusiness.fromJson(Map<String, dynamic> data) => _$DefaultBusinessFromJson(data);

  Map<String, dynamic> toJson() => _$DefaultBusinessToJson(this);
}


