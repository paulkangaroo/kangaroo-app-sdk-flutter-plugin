// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tier_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTierLevel _$UserTierLevelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserTierLevel',
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
        final val = UserTierLevel(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          reachSpend:
              $checkedConvert('reach_spend', (v) => (v as num?)?.toInt()),
          reachVisits:
              $checkedConvert('reach_visits', (v) => (v as num?)?.toInt()),
          reachPoints:
              $checkedConvert('reach_points', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'reachSpend': 'reach_spend',
        'reachVisits': 'reach_visits',
        'reachPoints': 'reach_points'
      },
    );

Map<String, dynamic> _$UserTierLevelToJson(UserTierLevel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'reach_spend': instance.reachSpend,
      'reach_visits': instance.reachVisits,
      'reach_points': instance.reachPoints,
    };
