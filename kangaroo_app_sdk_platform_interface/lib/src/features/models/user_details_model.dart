/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

part 'user_details_model.g.dart';

/// User Details model class containing user details
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserDetailsModel {
  ///Contains all user details 
  @JsonKey(name: "data")
  final UserProfileDataModel? data;

  UserDetailsModel({
    required this.data,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> data) => _$UserDetailsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserDetailsModelToJson(this);
}


