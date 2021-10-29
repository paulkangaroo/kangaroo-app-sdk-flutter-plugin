/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data.dart';

part 'user_profile_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserProfileModel {
  ///Contains the new users profile data 
  final UserProfileData data;

  UserProfileModel({
    required this.data,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> data) => _$UserProfileModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileModelToJson(this);
}


