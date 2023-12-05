/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_progress.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/referral_program.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_progress.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/referral_program.dart';

part 'user_profile_include.g.dart';

/// Extra user profile data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserProfileInclude {
  ///User Profile balance data. 
  @JsonKey(name: "balance")
  final UserBalance? balance;

  ///User&#39;s tier status.  
  @JsonKey(name: "tier_level")
  final TierLevel? tierLevel;

  ///User&#39;s tier progress and status. If a user&#39;s tier status is statically fixed, this will be null as they do not progress from tier to tier.  
  @JsonKey(name: "tier_progress")
  final TierProgress? tierProgress;

  ///A list of referral programs the user has access to. 
  @JsonKey(name: "referral_programs")
  final List<ReferralProgram>? referralPrograms;

  UserProfileInclude({
    required this.balance,
    required this.tierLevel,
    required this.tierProgress,
    required this.referralPrograms,
  });

  factory UserProfileInclude.fromJson(Map<String, dynamic> data) => _$UserProfileIncludeFromJson(data);

  Map<String, dynamic> toJson() => _$UserProfileIncludeToJson(this);
}


