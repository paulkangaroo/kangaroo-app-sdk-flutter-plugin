/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_include.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_include.dart';

part 'user_profile_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserProfileModel {
  ///Contains all user profile data 
  final UserProfileDataModel? data;

  ///Contains user balance data 
  final UserProfileInclude? included;

  UserProfileModel({
    required this.data,
    required this.included,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> data) => _$UserProfileModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}


