/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/country.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/country.dart';

part 'countries.g.dart';

/// A list of countries supported by Kangaroo
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Countries {
  ///A list of countries supported by Kangaroo 
  final List<Country>? data;

  Countries({
    required this.data,
  });

  factory Countries.fromJson(Map<String, dynamic> data) => _$CountriesFromJson(data);

  Map<String, dynamic> toJson() => _$CountriesToJson(this);
}


