/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_consent.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserConsent {
  @JsonKey(name: "allow_sms")
  final bool allowSms;

  @JsonKey(name: "allow_email")
  final bool allowEmail;

  @JsonKey(name: "allow_push")
  final bool allowPush;

  UserConsent({
    required this.allowSms,
required this.allowEmail,
required this.allowPush,
  });

  factory UserConsent.fromJson(Map<String, dynamic> data) => _$UserConsentFromJson(data);

  Map<String, dynamic> toJson() => _$UserConsentToJson(this);
}


