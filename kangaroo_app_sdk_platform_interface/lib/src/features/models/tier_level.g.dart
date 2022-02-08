// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierLevel _$TierLevelFromJson(Map<String, dynamic> json) => TierLevel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      reachSpend: json['reach_spend'] as int?,
      reachVisits: json['reach_visits'] as int?,
      reachPoints: json['reach_points'] as int?,
    );

Map<String, dynamic> _$TierLevelToJson(TierLevel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'reach_spend': instance.reachSpend,
      'reach_visits': instance.reachVisits,
      'reach_points': instance.reachPoints,
    };
