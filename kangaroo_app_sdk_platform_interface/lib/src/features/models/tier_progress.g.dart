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
            'left_points',
            'left_amount',
            'left_visits',
            'total_points',
            'total_amount',
            'total_visits'
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
          leftAmount:
              $checkedConvert('left_amount', (v) => (v as num?)?.toDouble()),
          leftVisits: $checkedConvert('left_visits', (v) => v as int?),
          totalPoints: $checkedConvert('total_points', (v) => v as int?),
          totalAmount:
              $checkedConvert('total_amount', (v) => (v as num?)?.toDouble()),
          totalVisits: $checkedConvert('total_visits', (v) => v as int?),
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
        'leftPoints': 'left_points',
        'leftAmount': 'left_amount',
        'leftVisits': 'left_visits',
        'totalPoints': 'total_points',
        'totalAmount': 'total_amount',
        'totalVisits': 'total_visits'
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
      'left_amount': instance.leftAmount,
      'left_visits': instance.leftVisits,
      'total_points': instance.totalPoints,
      'total_amount': instance.totalAmount,
      'total_visits': instance.totalVisits,
    };
