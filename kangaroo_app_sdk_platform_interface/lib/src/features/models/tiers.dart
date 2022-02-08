/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

part 'tiers.g.dart';

/// Information about the tier program. Users can move through different tiers if a business has activated their tier program. By acquire points, making purchases, and visiting the business, the user can be rewarded with different tier levels. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Tiers {
  ///The ID for this tier program. 
  final int? id;

  ///The sequence for this tier program. 
  final List<int>? tierSequence;

  final int? tierRelations;

  final int? resetType;

  ///The month in which this tier program will reset. 
  final int? ressetPeriodMonth;

  final int? basePreviousPeriod;

  ///Whether this tier program is currently enabled or disabled. 
  final bool? enabled;

  ///The various tier levels within this tier program. 
  final List<TierLevel>? tierLevels;

  Tiers({
    required this.id,
    required this.tierSequence,
    required this.tierRelations,
    required this.resetType,
    required this.ressetPeriodMonth,
    required this.basePreviousPeriod,
    required this.enabled,
    required this.tierLevels,
  });

  factory Tiers.fromJson(Map<String, dynamic> data) => _$TiersFromJson(data);

  Map<String, dynamic> toJson() => _$TiersToJson(this);
}


