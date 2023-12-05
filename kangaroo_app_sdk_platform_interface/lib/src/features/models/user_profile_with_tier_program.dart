/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_program_include.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_program_include.dart';

part 'user_profile_with_tier_program.g.dart';

/// User Profile model class containing user data and tier program data 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserProfileWithTierProgram {
  ///Contains all user profile data 
  @JsonKey(name: "data")
  final UserProfileDataModel? data;

  ///Contains user balance data 
  @JsonKey(name: "included")
  final TierProgramInclude? included;

  UserProfileWithTierProgram({
    required this.data,
    required this.included,
  });

  factory UserProfileWithTierProgram.fromJson(Map<String, dynamic> data) => _$UserProfileWithTierProgramFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileWithTierProgramToJson(this);
}


