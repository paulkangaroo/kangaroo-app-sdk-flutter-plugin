/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'address_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class AddressModel {
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

  @JsonKey(name: "lat")
  final double? lat;

  @JsonKey(name: "long")
  final double? long;

  @JsonKey(name: "zip_code")
  final String? zipCode;

  @JsonKey(name: "unit")
  final String? unit;

  AddressModel({
    required this.street,
    required this.city,
    required this.region,
    required this.country,
    required this.countryCode,
    required this.lat,
    required this.long,
    required this.zipCode,
    required this.unit,
  });

  factory AddressModel.fromJson(Map<String, dynamic> data) => _$AddressModelFromJson(data);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}


