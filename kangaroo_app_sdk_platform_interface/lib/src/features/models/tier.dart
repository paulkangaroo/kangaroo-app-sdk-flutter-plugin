/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';


part 'tier.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Tier {
  ///The ID for this tier program. 
  @JsonKey(name: "id")
  final int? id;

  ///The sequence for this tier program. 
  @JsonKey(name: "tiers_sequence")
  final List<int>? tiersSequence;

  ///If the tier program is an &#39;and&#39; or &#39;or&#39; 
  @JsonKey(name: "is_combined")
  final bool? isCombined;

  @JsonKey(name: "reset_type")
  final int? resetType;

  ///The month in which this tier program will reset. 
  @JsonKey(name: "reset_period_month")
  final int? resetPeriodMonth;

  @JsonKey(name: "base_previous_period")
  final int? basePreviousPeriod;

  ///Whether this tier program is currently enabled or disabled. 
  @JsonKey(name: "enabled")
  final bool? enabled;

  ///Default icon to show in case the user has no current tier level. 
  @JsonKey(name: "default_tier_icon")
  final String? defaultTierIcon;

  ///The various tier levels within this tier program. 
  @JsonKey(name: "tier_levels")
  final List<TierLevel>? tierLevels;

  ///To control whether to use customer registration month for reset.. 
  @JsonKey(name: "reset_by_customer_registration_month")
  final bool? resetByCustomerRegistrationMonth;

  ///How many months after the reset month. 
  @JsonKey(name: "grace_period")
  final String? gracePeriod;

  Tier({
    required this.id,
    required this.tiersSequence,
    required this.isCombined,
    required this.resetType,
    required this.resetPeriodMonth,
    required this.basePreviousPeriod,
    required this.enabled,
    required this.defaultTierIcon,
    required this.tierLevels,
    required this.resetByCustomerRegistrationMonth,
    required this.gracePeriod,
  });

  factory Tier.fromJson(Map<String, dynamic> data) => _$TierFromJson(data);

  Map<String, dynamic> toJson() => _$TierToJson(this);
}


