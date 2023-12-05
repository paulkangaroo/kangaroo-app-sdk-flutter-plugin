/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'tier_progress.g.dart';

/// Represents a users' tier progress within their current tier. This also includes other useful information about the tier such as start and end dates, as well as the next tier the user will reach. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TierProgress {
  ///The start date for this tier session. 
  @JsonKey(name: "start_date")
  final String? startDate;

  ///The end date for this tier session. The tier will be reset once this date is reached.  
  @JsonKey(name: "end_date")
  final String? endDate;

  ///The name of the user&#39;s current tier level  
  @JsonKey(name: "tier_level")
  final String? tierLevel;

  ///The name of the user&#39;s current tier level. Tiers are recalculated once per day, as such \&quot;tier_level\&quot; may not be completely up to date.  
  @JsonKey(name: "tier_level_live")
  final String? tierLevelLive;

  ///The name of the user&#39;s next tier level.  
  @JsonKey(name: "next_tier_level")
  final String? nextTierLevel;

  ///The users current tier progress in their \&quot;tier_level\&quot;. This will be a number between 0 and 1. A tier progress of 0.5 means that the user has made 50% progress in their current tier.  
  @JsonKey(name: "tier_progress")
  final double? tierProgress;

  ///The amount of points left in the user&#39;s current tier progress. Once they have acquired this many more amount of points, they will be moved into the next tier.  
  @JsonKey(name: "left_points")
  final int? leftPoints;

  ///The amount of spend left in the user&#39;s current tier progress. Once they have acquired this many more amount of spend, they will be moved into the next tier.  
  @JsonKey(name: "left_amount")
  final double? leftAmount;

  ///The amount of visits left in the user&#39;s current tier progress. Once they have acquired this many more amount of visits, they will be moved into the next tier.  
  @JsonKey(name: "left_visits")
  final int? leftVisits;

  ///Purchase points between start_date and end_date.  
  @JsonKey(name: "total_points")
  final int? totalPoints;

  ///Purchase amount between start_date and end_date.  
  @JsonKey(name: "total_amount")
  final double? totalAmount;

  ///Purchase visits between start_date and end_date.  
  @JsonKey(name: "total_visits")
  final int? totalVisits;

  TierProgress({
    required this.startDate,
    required this.endDate,
    required this.tierLevel,
    required this.tierLevelLive,
    required this.nextTierLevel,
    required this.tierProgress,
    required this.leftPoints,
    required this.leftAmount,
    required this.leftVisits,
    required this.totalPoints,
    required this.totalAmount,
    required this.totalVisits,
  });

  factory TierProgress.fromJson(Map<String, dynamic> data) => _$TierProgressFromJson(data);

  Map<String, dynamic> toJson() => _$TierProgressToJson(this);
}


