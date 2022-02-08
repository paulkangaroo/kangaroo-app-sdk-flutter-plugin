// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralProgram _$ReferralProgramFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ReferralProgram',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'rule_name',
            'cond_min_amount',
            'referee_earns',
            'referer_earns',
            'expires_in',
            'enabled',
            'link_referral_enabled',
            'referral_link'
          ],
        );
        final val = ReferralProgram(
          id: $checkedConvert('id', (v) => v as int?),
          ruleName: $checkedConvert('rule_name', (v) => v as String?),
          condMinAmount: $checkedConvert(
              'cond_min_amount', (v) => (v as num?)?.toDouble()),
          refereeEarns: $checkedConvert('referee_earns', (v) => v as int?),
          refererEarns: $checkedConvert('referer_earns', (v) => v as int?),
          expiresIn: $checkedConvert('expires_in', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          linkReferralEnabled:
              $checkedConvert('link_referral_enabled', (v) => v as bool?),
          referralLink: $checkedConvert('referral_link', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'ruleName': 'rule_name',
        'condMinAmount': 'cond_min_amount',
        'refereeEarns': 'referee_earns',
        'refererEarns': 'referer_earns',
        'expiresIn': 'expires_in',
        'linkReferralEnabled': 'link_referral_enabled',
        'referralLink': 'referral_link'
      },
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
