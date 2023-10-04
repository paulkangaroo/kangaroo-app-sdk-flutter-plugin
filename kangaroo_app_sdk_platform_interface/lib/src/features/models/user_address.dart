/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_address.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserAddress {
  final String? street;

  final String? city;

  final String? region;

  final String? country;

  final String? countryCode;

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


