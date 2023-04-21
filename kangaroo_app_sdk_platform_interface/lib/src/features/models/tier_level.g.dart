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
            'reach_points',
            'icon',
            'tier_perks',
            'languages'
          ],
        );
        final val = TierLevel(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          reachSpend:
              $checkedConvert('reach_spend', (v) => (v as num?)?.toDouble()),
          reachVisits: $checkedConvert('reach_visits', (v) => v as int?),
          reachPoints: $checkedConvert('reach_points', (v) => v as int?),
          icon: $checkedConvert('icon', (v) => v as String?),
          tierPerks: $checkedConvert(
              'tier_perks',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TierPerk.fromJson(e as Map<String, dynamic>))
                  .toList()),
          languages: $checkedConvert(
              'languages',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TierLevelTranslation.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'reachSpend': 'reach_spend',
        'reachVisits': 'reach_visits',
        'reachPoints': 'reach_points',
        'tierPerks': 'tier_perks'
      },
    );

Map<String, dynamic> _$TierLevelToJson(TierLevel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'reach_spend': instance.reachSpend,
      'reach_visits': instance.reachVisits,
      'reach_points': instance.reachPoints,
      'icon': instance.icon,
      'tier_perks': instance.tierPerks?.map((e) => e.toJson()).toList(),
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
    };
