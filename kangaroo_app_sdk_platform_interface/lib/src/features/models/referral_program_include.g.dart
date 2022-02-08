// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_program_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralProgramInclude _$ReferralProgramIncludeFromJson(
        Map<String, dynamic> json) =>
    ReferralProgramInclude(
      referralPrograms: (json['referral_programs'] as List<dynamic>?)
          ?.map((e) => ReferralProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReferralProgramIncludeToJson(
        ReferralProgramInclude instance) =>
    <String, dynamic>{
      'referral_programs':
          instance.referralPrograms?.map((e) => e.toJson()).toList(),
    };
