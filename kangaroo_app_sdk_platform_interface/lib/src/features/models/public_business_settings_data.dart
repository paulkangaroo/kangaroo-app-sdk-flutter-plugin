/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'public_business_settings_data.g.dart';

/// business public settings data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicBusinessSettingsData {
  ///business 
  @JsonKey(name: "business")
  final BusinessData? business;

  PublicBusinessSettingsData({
    required this.business,
  });

  factory PublicBusinessSettingsData.fromJson(Map<String, dynamic> data) => _$PublicBusinessSettingsDataFromJson(data);

  Map<String, dynamic> toJson() => _$PublicBusinessSettingsDataToJson(this);
}


