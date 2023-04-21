// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_program_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierProgramInclude _$TierProgramIncludeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TierProgramInclude',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['tier_level', 'tiers', 'tier_progress'],
        );
        final val = TierProgramInclude(
          tierLevel: $checkedConvert(
              'tier_level',
              (v) => v == null
                  ? null
                  : UserTierLevel.fromJson(v as Map<String, dynamic>)),
          tiers: $checkedConvert(
              'tiers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Tier.fromJson(e as Map<String, dynamic>))
                  .toList()),
          tierProgress: $checkedConvert(
              'tier_progress',
              (v) => v == null
                  ? null
                  : TierProgress.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'tierLevel': 'tier_level',
        'tierProgress': 'tier_progress'
      },
    );

Map<String, dynamic> _$TierProgramIncludeToJson(TierProgramInclude instance) =>
    <String, dynamic>{
      'tier_level': instance.tierLevel?.toJson(),
      'tiers': instance.tiers?.map((e) => e.toJson()).toList(),
      'tier_progress': instance.tierProgress?.toJson(),
    };
