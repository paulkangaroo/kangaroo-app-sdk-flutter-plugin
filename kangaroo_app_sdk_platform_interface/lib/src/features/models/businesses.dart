/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'businesses.g.dart';

/// A list of businesses associated with this user and this app. Usually there will only be one business. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Businesses {
  ///A list of businesses for this user and this app. 
  @JsonKey(name: "data")
  final List<BusinessData>? data;

  Businesses({
    required this.data,
  });

  factory Businesses.fromJson(Map<String, dynamic> data) => _$BusinessesFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessesToJson(this);
}


