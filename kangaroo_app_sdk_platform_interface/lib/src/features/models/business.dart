/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_branches_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_branches_data.dart';

part 'business.g.dart';

/// Details about a business. Basic information is in main data field, while information on the business' branches are in the 'include' parameter 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Business {
  ///Details about a business 
  @JsonKey(name: "data")
  final BusinessData? data;

  ///Details about a business&#39; branches 
  @JsonKey(name: "included")
  final BusinessBranchesData? included;

  Business({
    required this.data,
    required this.included,
  });

  factory Business.fromJson(Map<String, dynamic> data) => _$BusinessFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessToJson(this);
}


