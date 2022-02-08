/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/referral_program.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/referral_program.dart';

part 'referral_program_include.g.dart';

/// Contains data about the referral program for this business.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ReferralProgramInclude {
  ///A List of referral programs. 
  final List<ReferralProgram>? referralPrograms;

  ReferralProgramInclude({
    required this.referralPrograms,
  });

  factory ReferralProgramInclude.fromJson(Map<String, dynamic> data) => _$ReferralProgramIncludeFromJson(data);

  Map<String, dynamic> toJson() => _$ReferralProgramIncludeToJson(this);
}


