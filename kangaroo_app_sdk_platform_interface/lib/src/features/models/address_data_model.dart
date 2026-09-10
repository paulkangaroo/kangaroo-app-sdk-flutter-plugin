/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'address_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class AddressDataModel {
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

  @JsonKey(name: "formatted")
  final String? formatted;

  @JsonKey(name: "lat")
  final double? lat;

  @JsonKey(name: "long")
  final double? long;

  @JsonKey(name: "zip_code")
  final String? zipCode;

  @JsonKey(name: "unit")
  final String? unit;

  @JsonKey(name: "address")
  final String? address;

  AddressDataModel({
    required this.street,
    required this.city,
    required this.region,
    required this.country,
    required this.countryCode,
    required this.formatted,
    required this.lat,
    required this.long,
    required this.zipCode,
    required this.unit,
    required this.address,
  });

  factory AddressDataModel.fromJson(Map<String, dynamic> data) => _$AddressDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$AddressDataModelToJson(this);
}


