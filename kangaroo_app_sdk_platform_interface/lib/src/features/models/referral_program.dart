/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'referral_program.g.dart';

/// A referral program
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ReferralProgram {
  ///The unique id of this referral program. 
  final int? id;

  final String? ruleName;

  ///The minimum purchawe amount required for a succesful referral. 
  final double? condMinAmount;

  ///The number of points the new customer will earn. 
  final int? refereeEarns;

  ///The number of points the new customer who made the referral will earn. 
  final int? refererEarns;

  ///The number of days the new customer has to sign up in order for a referral to be sucessful.  
  final int? expiresIn;

  ///Denotes whether this referral program is currently active. 
  final bool? enabled;

  ///Denotes whether this referral program has enabled share links. Referral share links are links that the customer can send to prospective referrals. A User can sign up to the business through this link in order to complete the referral.  
  final bool? linkReferralEnabled;

  ///A link that can be shared to prospective referrals. 
  final String? referralLink;

  ReferralProgram({
    required this.id,
    required this.ruleName,
    required this.condMinAmount,
    required this.refereeEarns,
    required this.refererEarns,
    required this.expiresIn,
    required this.enabled,
    required this.linkReferralEnabled,
    required this.referralLink,
  });

  factory ReferralProgram.fromJson(Map<String, dynamic> data) => _$ReferralProgramFromJson(data);

  Map<String, dynamic> toJson() => _$ReferralProgramToJson(this);
}


