// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tier _$TierFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Tier',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'tiers_sequence',
            'is_combined',
            'reset_type',
            'reset_period_month',
            'base_previous_period',
            'enabled',
            'default_tier_icon',
            'tier_levels',
            'reset_by_customer_registration_month',
            'grace_period'
          ],
        );
        final val = Tier(
          id: $checkedConvert('id', (v) => v as int?),
          tiersSequence: $checkedConvert('tiers_sequence',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          isCombined: $checkedConvert('is_combined', (v) => v as bool?),
          resetType: $checkedConvert('reset_type', (v) => v as int?),
          resetPeriodMonth:
              $checkedConvert('reset_period_month', (v) => v as int?),
          basePreviousPeriod:
              $checkedConvert('base_previous_period', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          defaultTierIcon:
              $checkedConvert('default_tier_icon', (v) => v as String?),
          tierLevels: $checkedConvert(
              'tier_levels',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TierLevel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          resetByCustomerRegistrationMonth: $checkedConvert(
              'reset_by_customer_registration_month', (v) => v as bool?),
          gracePeriod: $checkedConvert('grace_period', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'tiersSequence': 'tiers_sequence',
        'isCombined': 'is_combined',
        'resetType': 'reset_type',
        'resetPeriodMonth': 'reset_period_month',
        'basePreviousPeriod': 'base_previous_period',
        'defaultTierIcon': 'default_tier_icon',
        'tierLevels': 'tier_levels',
        'resetByCustomerRegistrationMonth':
            'reset_by_customer_registration_month',
        'gracePeriod': 'grace_period'
      },
    );

Map<String, dynamic> _$TierToJson(Tier instance) => <String, dynamic>{
      'id': instance.id,
      'tiers_sequence': instance.tiersSequence,
      'is_combined': instance.isCombined,
      'reset_type': instance.resetType,
      'reset_period_month': instance.resetPeriodMonth,
      'base_previous_period': instance.basePreviousPeriod,
      'enabled': instance.enabled,
      'default_tier_icon': instance.defaultTierIcon,
      'tier_levels': instance.tierLevels?.map((e) => e.toJson()).toList(),
      'reset_by_customer_registration_month':
          instance.resetByCustomerRegistrationMonth,
      'grace_period': instance.gracePeriod,
    };
