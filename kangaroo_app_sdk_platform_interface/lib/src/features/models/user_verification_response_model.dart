/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

part 'user_verification_response_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserVerificationResponseModel {
  ///Contains all user profile data 
  @JsonKey(name: "data")
  final UserProfileDataModel? data;

  UserVerificationResponseModel({
    required this.data,
  });

  factory UserVerificationResponseModel.fromJson(Map<String, dynamic> data) => _$UserVerificationResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserVerificationResponseModelToJson(this);
}


