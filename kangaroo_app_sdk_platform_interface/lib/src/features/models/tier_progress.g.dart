// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierProgress _$TierProgressFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TierProgress',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'start_date',
            'end_date',
            'tier_level',
            'tier_level_live',
            'next_tier_level',
            'tier_progress',
            'left_points'
          ],
        );
        final val = TierProgress(
          startDate: $checkedConvert('start_date', (v) => v as String?),
          endDate: $checkedConvert('end_date', (v) => v as String?),
          tierLevel: $checkedConvert('tier_level', (v) => v as String?),
          tierLevelLive:
              $checkedConvert('tier_level_live', (v) => v as String?),
          nextTierLevel:
              $checkedConvert('next_tier_level', (v) => v as String?),
          tierProgress:
              $checkedConvert('tier_progress', (v) => (v as num?)?.toDouble()),
          leftPoints: $checkedConvert('left_points', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'startDate': 'start_date',
        'endDate': 'end_date',
        'tierLevel': 'tier_level',
        'tierLevelLive': 'tier_level_live',
        'nextTierLevel': 'next_tier_level',
        'tierProgress': 'tier_progress',
        'leftPoints': 'left_points'
      },
    );

Map<String, dynamic> _$TierProgressToJson(TierProgress instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'tier_level': instance.tierLevel,
      'tier_level_live': instance.tierLevelLive,
      'next_tier_level': instance.nextTierLevel,
      'tier_progress': instance.tierProgress,
      'left_points': instance.leftPoints,
    };
