// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierProgress _$TierProgressFromJson(Map<String, dynamic> json) => TierProgress(
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      tierLevel: json['tier_level'] as String?,
      tierLevelLive: json['tier_level_live'] as String?,
      nextTierLevel: json['next_tier_level'] as String?,
      tierProgress: (json['tier_progress'] as num?)?.toDouble(),
      leftPoints: json['left_points'] as int?,
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
