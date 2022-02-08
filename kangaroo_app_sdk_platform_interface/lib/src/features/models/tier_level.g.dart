// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierLevel _$TierLevelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TierLevel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'name',
            'reach_spend',
            'reach_visits',
            'reach_points'
          ],
        );
        final val = TierLevel(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          reachSpend: $checkedConvert('reach_spend', (v) => v as int?),
          reachVisits: $checkedConvert('reach_visits', (v) => v as int?),
          reachPoints: $checkedConvert('reach_points', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'reachSpend': 'reach_spend',
        'reachVisits': 'reach_visits',
        'reachPoints': 'reach_points'
      },
    );

Map<String, dynamic> _$TierLevelToJson(TierLevel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'reach_spend': instance.reachSpend,
      'reach_visits': instance.reachVisits,
      'reach_points': instance.reachPoints,
    };
