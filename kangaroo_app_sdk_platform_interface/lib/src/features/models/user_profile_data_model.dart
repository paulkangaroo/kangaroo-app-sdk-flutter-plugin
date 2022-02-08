/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_profile_data_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserProfileDataModel {
  ///Unique user ID. 
  final String id;

  ///Email address identifying this user. 
  final String? email;

  ///Phone number associated with this user. 
  final String? phone;

  ///First name associated with this user. 
  final String? firstName;

  ///Last name associated with this user. 
  final String? lastName;

  ///Unique QR code identifying this user. 
  final String? qrcode;

  ///Gender associated with this user. 
  final String? gender;

  ///Date of birth associated with this user. 
  final String? birthDate;

  ///Primary language assocaited with this user. 
  final String? language;

  ///Country code associated with this user. 
  final String? countryCode;

  ///Profile photo url associated with this user. 
  final String? profilePhoto;

  ///Date the account for this user was created. 
  final String? createdAt;

  ///Date the account for this user was last updated. 
  final String? updatedAt;

  ///Denotes whether this account has been enabled. 
  final bool? enabled;

  ///Denotes whether the email address for this user has been verified. 
  final bool? emailVerified;

  ///Denotes whether the phone number for this user has been verified. 
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


