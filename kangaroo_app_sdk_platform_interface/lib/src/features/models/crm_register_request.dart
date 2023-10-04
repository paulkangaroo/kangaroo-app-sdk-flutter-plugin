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
  final String? firstName;

  final String? lastName;

  final String? email;

  final String? phone;

  final String? countryCode;

  final String? gender;

  final String? referralCode;

  final String? birthDate;

  final String? postalCode;

  final String? country;

  final String? branchId;

  final bool? promotionsMail;

  final bool? termsAndConditions;

  final UserConsent? consent;

  final String? customField1;

  final String? customField2;

  final String? customField3;

  final String? customField4;

  final String? customField5;

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


