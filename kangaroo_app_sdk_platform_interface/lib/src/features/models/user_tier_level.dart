/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'user_tier_level.g.dart';

/// Represents the user's current tier level.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserTierLevel {
  ///The ID for this tier. 
  final int? id;

  ///The name of this tier level. 
  final String? name;

  ///The amount of money spent required to reach this tier. 
  final int? reachSpend;

  ///The amount of visits made to reach this tier. 
  final int? reachVisits;

  ///The amount of points acquired that is required to reach this tier. 
  final int? reachPoints;

  UserTierLevel({
    required this.id,
    required this.name,
    required this.reachSpend,
    required this.reachVisits,
    required this.reachPoints,
  });

  factory UserTierLevel.fromJson(Map<String, dynamic> data) => _$UserTierLevelFromJson(data);

  Map<String, dynamic> toJson() => _$UserTierLevelToJson(this);
}


