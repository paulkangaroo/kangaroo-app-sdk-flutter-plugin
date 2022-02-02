/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'tier_progress.g.dart';

/// Represents a users' tier progress within their current tier. This also includes other useful information about the tier such as start and end dates, as well as the next tier the user will reach. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TierProgress {
  ///The start date for this tier session. 
  final String? startDate;

  ///The end date for this tier session. The tier will be reset once this date is reached.  
  final String? endDate;

  ///The name of the user&#39;s current tier level  
  final String? tierLevel;

  ///The name of the user&#39;s current tier level. Tiers are recalculated once per day, as such \&quot;tier_level\&quot; may not be completely up to date.  
  final String? tierLevelLive;

  ///The name of the user&#39;s next tier level.  
  final String? nextTierLevel;

  ///The users current tier progress in their \&quot;tier_level\&quot;. This will be a number between 0 and 1. A tier progress of 0.5 means that the user has made 50% progress in their current tier.  
  final double? tierProgress;

  ///The amount of points left in the user&#39;s current tier progress. Once they have acquired this many more amount of points, they will be moved into the next tier. 
  final int? leftPoints;

  TierProgress({
    required this.startDate,
    required this.endDate,
    required this.tierLevel,
    required this.tierLevelLive,
    required this.nextTierLevel,
    required this.tierProgress,
    required this.leftPoints,
  });

  factory TierProgress.fromJson(Map<String, dynamic> data) => _$TierProgressFromJson(data);

  Map<String, dynamic> toJson() => _$TierProgressToJson(this);
}


