/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'branch_address.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BranchAddress {
  @JsonKey(name: "formatted")
  final String? formatted;

  @JsonKey(name: "street")
  final String? street;

  @JsonKey(name: "city")
  final String? city;

  @JsonKey(name: "region")
  final String? region;

  @JsonKey(name: "country")
  final String? country;

  @JsonKey(name: "lat")
  final double? lat;

  @JsonKey(name: "long")
  final double? long;

  BranchAddress({
    required this.formatted,
    required this.street,
    required this.city,
    required this.region,
    required this.country,
    required this.lat,
    required this.long,
  });

  factory BranchAddress.fromJson(Map<String, dynamic> data) => _$BranchAddressFromJson(data);

  Map<String, dynamic> toJson() => _$BranchAddressToJson(this);
}


