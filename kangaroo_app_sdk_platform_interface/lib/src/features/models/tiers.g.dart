// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tiers _$TiersFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Tiers',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'tier_sequence',
            'tier_relations',
            'reset_type',
            'resset_period_month',
            'base_previous_period',
            'enabled',
            'tier_levels'
          ],
        );
        final val = Tiers(
          id: $checkedConvert('id', (v) => v as int?),
          tierSequence: $checkedConvert('tier_sequence',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          tierRelations: $checkedConvert('tier_relations', (v) => v as int?),
          resetType: $checkedConvert('reset_type', (v) => v as int?),
          ressetPeriodMonth:
              $checkedConvert('resset_period_month', (v) => v as int?),
          basePreviousPeriod:
              $checkedConvert('base_previous_period', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          tierLevels: $checkedConvert(
              'tier_levels',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TierLevel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'tierSequence': 'tier_sequence',
        'tierRelations': 'tier_relations',
        'resetType': 'reset_type',
        'ressetPeriodMonth': 'resset_period_month',
        'basePreviousPeriod': 'base_previous_period',
        'tierLevels': 'tier_levels'
      },
    );

Map<String, dynamic> _$TiersToJson(Tiers instance) => <String, dynamic>{
      'id': instance.id,
      'tier_sequence': instance.tierSequence,
      'tier_relations': instance.tierRelations,
      'reset_type': instance.resetType,
      'resset_period_month': instance.ressetPeriodMonth,
      'base_previous_period': instance.basePreviousPeriod,
      'enabled': instance.enabled,
      'tier_levels': instance.tierLevels?.map((e) => e.toJson()).toList(),
    };
