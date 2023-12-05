/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'country.g.dart';

/// A country model
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Country {
  ///Unique country ID. 
  @JsonKey(name: "id")
  final int? id;

  ///The name of this country 
  @JsonKey(name: "name")
  final String? name;

  ///The two character country code for this country. Follows ISO standards.  
  @JsonKey(name: "code")
  final String? code;

  ///The three character country code for this country. Follows ISO standards.  
  @JsonKey(name: "code_iso3")
  final String? codeIso3;

  ///The international phoen code for this country. 
  @JsonKey(name: "phone_code")
  final int? phoneCode;

  Country({
    required this.id,
    required this.name,
    required this.code,
    required this.codeIso3,
    required this.phoneCode,
  });

  factory Country.fromJson(Map<String, dynamic> data) => _$CountryFromJson(data);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}


