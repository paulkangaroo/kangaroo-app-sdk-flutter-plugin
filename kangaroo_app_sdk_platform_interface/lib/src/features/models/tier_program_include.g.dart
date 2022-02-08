// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tier_program_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TierProgramInclude _$TierProgramIncludeFromJson(Map<String, dynamic> json) =>
    TierProgramInclude(
      tiers: json['tiers'] == null
          ? null
          : Tiers.fromJson(json['tiers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TierProgramIncludeToJson(TierProgramInclude instance) =>
    <String, dynamic>{
      'tiers': instance.tiers?.toJson(),
    };
