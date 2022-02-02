/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tiers.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tiers.dart';

part 'tier_program_include.g.dart';

/// Information about the tier program. Users can move through different tiers if a business has activated their tier program. By acquire points, making purchases, and visiting the business, the user can be rewarded with different tier levels. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TierProgramInclude {
  ///Information about the tier program. Users can move through different tiers if a business has activated their tier program. By acquire points, making purchases, and visiting the business, the user can be rewarded with different tier levels.  
  final Tiers tiers;

  TierProgramInclude({
    required this.tiers,
  });

  factory TierProgramInclude.fromJson(Map<String, dynamic> data) => _$TierProgramIncludeFromJson(data);

  Map<String, dynamic> toJson() => _$TierProgramIncludeToJson(this);
}


