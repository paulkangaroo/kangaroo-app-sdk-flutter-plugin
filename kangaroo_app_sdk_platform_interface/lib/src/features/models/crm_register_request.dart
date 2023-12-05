/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_consent.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_address.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_consent.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_address.dart';

part 'crm_register_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CrmRegisterRequest {
  @JsonKey(name: "first_name")
  final String? firstName;

  @JsonKey(name: "last_name")
  final String? lastName;

  @JsonKey(name: "email")
  final String? email;

  @JsonKey(name: "phone")
  final String? phone;

  @JsonKey(name: "country_code")
  final String? countryCode;

  @JsonKey(name: "gender")
  final String? gender;

  @JsonKey(name: "referral_code")
  final String? referralCode;

  @JsonKey(name: "birth_date")
  final String? birthDate;

  @JsonKey(name: "postal_code")
  final String? postalCode;

  @JsonKey(name: "country")
  final String? country;

  @JsonKey(name: "branch_id")
  final String? branchId;

  @JsonKey(name: "promotions_mail")
  final bool? promotionsMail;

  @JsonKey(name: "terms_and_conditions")
  final bool? termsAndConditions;

  @JsonKey(name: "consent")
  final UserConsent? consent;

  @JsonKey(name: "custom_field_1")
  final String? customField1;

  @JsonKey(name: "custom_field_2")
  final String? customField2;

  @JsonKey(name: "custom_field_3")
  final String? customField3;

  @JsonKey(name: "custom_field_4")
  final String? customField4;

  @JsonKey(name: "custom_field_5")
  final String? customField5;

  @JsonKey(name: "address")
  final UserAddress? address;

  CrmRegisterRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.countryCode,
    required this.gender,
    required this.referralCode,
    required this.birthDate,
    required this.postalCode,
    required this.country,
    required this.branchId,
    required this.promotionsMail,
    required this.termsAndConditions,
    required this.consent,
    required this.customField1,
    required this.customField2,
    required this.customField3,
    required this.customField4,
    required this.customField5,
    required this.address,
  });

  factory CrmRegisterRequest.fromJson(Map<String, dynamic> data) => _$CrmRegisterRequestFromJson(data);

  Map<String, dynamic> toJson() => _$CrmRegisterRequestToJson(this);
}


