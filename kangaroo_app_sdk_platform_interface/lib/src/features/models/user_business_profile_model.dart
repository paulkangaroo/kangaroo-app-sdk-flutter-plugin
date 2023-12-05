/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_include.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_include.dart';

part 'user_business_profile_model.g.dart';

/// User Profile model class containing user data for specific business
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessProfileModel {
  ///Contains business data 
  @JsonKey(name: "data")
  final BusinessData? data;

  ///Contains user balance data 
  @JsonKey(name: "included")
  final UserProfileInclude? included;

  UserBusinessProfileModel({
    required this.data,
    required this.included,
  });

  factory UserBusinessProfileModel.fromJson(Map<String, dynamic> data) => _$UserBusinessProfileModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessProfileModelToJson(this);
}


