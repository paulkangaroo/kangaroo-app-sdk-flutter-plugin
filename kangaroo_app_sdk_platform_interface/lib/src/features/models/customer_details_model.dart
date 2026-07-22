/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/balance_details_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/balance_details_model.dart';

part 'customer_details_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CustomerDetailsModel {
  ///A unique ID identifying this customer 
  @JsonKey(name: "id")
  final String id;

  @JsonKey(name: "display_name")
  final String? displayName;

  @JsonKey(name: "email")
  final String? email;

  @JsonKey(name: "phone")
  final String? phone;

  @JsonKey(name: "first_name")
  final String? firstName;

  @JsonKey(name: "last_name")
  final String? lastName;

  @JsonKey(name: "qrcode")
  final String? qrcode;

  @JsonKey(name: "gender")
  final String? gender;

  @JsonKey(name: "birth_date")
  final String? birthDate;

  @JsonKey(name: "language")
  final String? language;

  @JsonKey(name: "country_code")
  final String? countryCode;

  @JsonKey(name: "profile_photo")
  final String? profilePhoto;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @JsonKey(name: "enabled")
  final bool? enabled;

  @JsonKey(name: "email_verified")
  final bool? emailVerified;

  @JsonKey(name: "phone_verified")
  final bool? phoneVerified;

  @JsonKey(name: "balance")
  final BalanceDetailsModel? balance;

  CustomerDetailsModel({
    required this.id,
    required this.displayName,
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
    required this.balance,
  });

  factory CustomerDetailsModel.fromJson(Map<String, dynamic> data) => _$CustomerDetailsModelFromJson(data);

  Map<String, dynamic> toJson() => _$CustomerDetailsModelToJson(this);
}


