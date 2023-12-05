/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_address.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserAddress {
  @JsonKey(name: "street")
  final String? street;

  @JsonKey(name: "city")
  final String? city;

  @JsonKey(name: "region")
  final String? region;

  @JsonKey(name: "country")
  final String? country;

  @JsonKey(name: "country_code")
  final String? countryCode;

  @JsonKey(name: "zip_code")
  final String? zipCode;

  UserAddress({
    required this.street,
    required this.city,
    required this.region,
    required this.country,
    required this.countryCode,
    required this.zipCode,
  });

  factory UserAddress.fromJson(Map<String, dynamic> data) => _$UserAddressFromJson(data);

  Map<String, dynamic> toJson() => _$UserAddressToJson(this);
}


