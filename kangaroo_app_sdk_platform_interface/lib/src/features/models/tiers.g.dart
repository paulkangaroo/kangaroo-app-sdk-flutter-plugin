// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tiers _$TiersFromJson(Map<String, dynamic> json) => Tiers(
      id: json['id'] as int?,
      tierSequence: (json['tier_sequence'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      tierRelations: json['tier_relations'] as int?,
      resetType: json['reset_type'] as int?,
      ressetPeriodMonth: json['resset_period_month'] as int?,
      basePreviousPeriod: json['base_previous_period'] as int?,
      enabled: json['enabled'] as bool?,
      tierLevels: (json['tier_levels'] as List<dynamic>?)
          ?.map((e) => TierLevel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
