// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_program_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierProgramInclude _$TierProgramIncludeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TierProgramInclude',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['tiers'],
        );
        final val = TierProgramInclude(
          tiers: $checkedConvert(
              'tiers',
              (v) =>
                  v == null ? null : Tiers.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$TierProgramIncludeToJson(TierProgramInclude instance) =>
    <String, dynamic>{
      'tiers': instance.tiers?.toJson(),
    };
