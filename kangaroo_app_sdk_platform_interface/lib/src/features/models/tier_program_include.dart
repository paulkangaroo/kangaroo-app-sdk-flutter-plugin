/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_tier_level.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tiers.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_progress.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_tier_level.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tiers.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_progress.dart';

part 'tier_program_include.g.dart';

/// Information about the tier program. Users can move through different tiers if a business has activated their tier program. By acquire points, making purchases, and visiting the business, the user can be rewarded with different tier levels. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TierProgramInclude {
  ///User&#39;s tier status.  
  @JsonKey(name: "tier_level")
  final UserTierLevel? tierLevel;

  ///Information about the tier program. Users can move through different tiers if a business has activated their tier program. By acquire points, making purchases, and visiting the business, the user can be rewarded with different tier levels.  
  @JsonKey(name: "tiers")
  final Tiers? tiers;

  ///User&#39;s tier progress and status. If a user&#39;s tier status is statically fixed, this will be null as they do not progress from tier to tier.  
  @JsonKey(name: "tier_progress")
  final TierProgress? tierProgress;

  TierProgramInclude({
    required this.tierLevel,
    required this.tiers,
    required this.tierProgress,
  });

  factory TierProgramInclude.fromJson(Map<String, dynamic> data) => _$TierProgramIncludeFromJson(data);

  Map<String, dynamic> toJson() => _$TierProgramIncludeToJson(this);
}


