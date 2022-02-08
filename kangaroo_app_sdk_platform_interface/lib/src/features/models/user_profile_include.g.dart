// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileInclude _$UserProfileIncludeFromJson(Map<String, dynamic> json) =>
    UserProfileInclude(
      balance: json['balance'] == null
          ? null
          : UserBalance.fromJson(json['balance'] as Map<String, dynamic>),
      tierProgress: json['tier_progress'] == null
          ? null
          : TierProgress.fromJson(
              json['tier_progress'] as Map<String, dynamic>),
      referralPrograms: (json['referral_programs'] as List<dynamic>?)
          ?.map((e) => ReferralProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserProfileIncludeToJson(UserProfileInclude instance) =>
    <String, dynamic>{
      'balance': instance.balance?.toJson(),
      'tier_progress': instance.tierProgress?.toJson(),
      'referral_programs':
          instance.referralPrograms?.map((e) => e.toJson()).toList(),
    };
