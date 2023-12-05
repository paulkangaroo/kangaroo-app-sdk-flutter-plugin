/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_profile_data_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserProfileDataModel {
  ///Unique user ID. 
  @JsonKey(name: "id")
  final String? id;

  ///Email address identifying this user. 
  @JsonKey(name: "email")
  final String? email;

  ///Phone number associated with this user. 
  @JsonKey(name: "phone")
  final String? phone;

  ///First name associated with this user. 
  @JsonKey(name: "first_name")
  final String? firstName;

  ///Last name associated with this user. 
  @JsonKey(name: "last_name")
  final String? lastName;

  ///Unique QR code identifying this user. 
  @JsonKey(name: "qrcode")
  final String? qrcode;

  ///Gender associated with this user. 
  @JsonKey(name: "gender")
  final String? gender;

  ///Date of birth associated with this user. 
  @JsonKey(name: "birth_date")
  final String? birthDate;

  ///Primary language assocaited with this user. 
  @JsonKey(name: "language")
  final String? language;

  ///Country code associated with this user. 
  @JsonKey(name: "country_code")
  final String? countryCode;

  ///Profile photo url associated with this user. 
  @JsonKey(name: "profile_photo")
  final String? profilePhoto;

  ///Date the account for this user was created. 
  @JsonKey(name: "created_at")
  final String? createdAt;

  ///Date the account for this user was last updated. 
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  ///Denotes whether this account has been enabled. 
  @JsonKey(name: "enabled")
  final bool? enabled;

  ///Denotes whether the email address for this user has been verified. 
  @JsonKey(name: "email_verified")
  final bool? emailVerified;

  ///Denotes whether the phone number for this user has been verified. 
  @JsonKey(name: "phone_verified")
  final bool? phoneVerified;

  UserProfileDataModel({
    required this.id,
    required this.email,
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.qrcode,
    required this.gender,
    required this.birthDate,
    required this.language,
    required this.countryCode,
    required this.profilePhoto,
    required this.createdAt,
    required this.updatedAt,
    required this.enabled,
    required this.emailVerified,
    required this.phoneVerified,
  });

  factory UserProfileDataModel.fromJson(Map<String, dynamic> data) => _$UserProfileDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileDataModelToJson(this);
}


