// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralProgram _$ReferralProgramFromJson(Map<String, dynamic> json) =>
    ReferralProgram(
      id: json['id'] as int?,
      ruleName: json['rule_name'] as String?,
      condMinAmount: (json['cond_min_amount'] as num?)?.toDouble(),
      refereeEarns: json['referee_earns'] as int?,
      refererEarns: json['referer_earns'] as int?,
      expiresIn: json['expires_in'] as int?,
      enabled: json['enabled'] as bool?,
      linkReferralEnabled: json['link_referral_enabled'] as bool?,
      referralLink: json['referral_link'] as String?,
    );

Map<String, dynamic> _$ReferralProgramToJson(ReferralProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rule_name': instance.ruleName,
      'cond_min_amount': instance.condMinAmount,
      'referee_earns': instance.refereeEarns,
      'referer_earns': instance.refererEarns,
      'expires_in': instance.expiresIn,
      'enabled': instance.enabled,
      'link_referral_enabled': instance.linkReferralEnabled,
      'referral_link': instance.referralLink,
    };
