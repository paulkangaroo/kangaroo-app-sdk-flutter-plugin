// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_consent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserConsent _$UserConsentFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserConsent',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['allow_sms', 'allow_email', 'allow_push'],
        );
        final val = UserConsent(
          allowSms: $checkedConvert('allow_sms', (v) => v as bool),
          allowEmail: $checkedConvert('allow_email', (v) => v as bool),
          allowPush: $checkedConvert('allow_push', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'allowSms': 'allow_sms',
        'allowEmail': 'allow_email',
        'allowPush': 'allow_push'
      },
    );

Map<String, dynamic> _$UserConsentToJson(UserConsent instance) =>
    <String, dynamic>{
      'allow_sms': instance.allowSms,
      'allow_email': instance.allowEmail,
      'allow_push': instance.allowPush,
    };
