/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_business_settings_data.dart';

part 'public_business_settings.g.dart';

/// public settings related to the business
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicBusinessSettings {
  ///Details about the business public settings 
  @JsonKey(name: "data")
  final PublicBusinessSettingsData? data;

  PublicBusinessSettings({
    required this.data,
  });

  factory PublicBusinessSettings.fromJson(Map<String, dynamic> data) => _$PublicBusinessSettingsFromJson(data);

  Map<String, dynamic> toJson() => _$PublicBusinessSettingsToJson(this);
}


