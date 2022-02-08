// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileInclude _$UserProfileIncludeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserProfileInclude',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['balance', 'tier_progress', 'referral_programs'],
        );
        final val = UserProfileInclude(
          balance: $checkedConvert(
              'balance',
              (v) => v == null
                  ? null
                  : UserBalance.fromJson(v as Map<String, dynamic>)),
          tierProgress: $checkedConvert(
              'tier_progress',
              (v) => v == null
                  ? null
                  : TierProgress.fromJson(v as Map<String, dynamic>)),
          referralPrograms: $checkedConvert(
              'referral_programs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ReferralProgram.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'tierProgress': 'tier_progress',
        'referralPrograms': 'referral_programs'
      },
    );

Map<String, dynamic> _$UserProfileIncludeToJson(UserProfileInclude instance) =>
    <String, dynamic>{
      'balance': instance.balance?.toJson(),
      'tier_progress': instance.tierProgress?.toJson(),
      'referral_programs':
          instance.referralPrograms?.map((e) => e.toJson()).toList(),
    };
