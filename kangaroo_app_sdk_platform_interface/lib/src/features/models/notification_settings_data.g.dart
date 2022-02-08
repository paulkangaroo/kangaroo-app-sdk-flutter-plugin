// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettingsData _$NotificationSettingsDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationSettingsData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'business',
            'allow_email',
            'allow_sms',
            'allow_push'
          ],
        );
        final val = NotificationSettingsData(
          id: $checkedConvert('id', (v) => v as String?),
          business: $checkedConvert(
              'business',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          allowEmail: $checkedConvert('allow_email', (v) => v as bool?),
          allowSms: $checkedConvert('allow_sms', (v) => v as bool?),
          allowPush: $checkedConvert('allow_push', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'allowEmail': 'allow_email',
        'allowSms': 'allow_sms',
        'allowPush': 'allow_push'
      },
    );

Map<String, dynamic> _$NotificationSettingsDataToJson(
        NotificationSettingsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'business': instance.business?.toJson(),
      'allow_email': instance.allowEmail,
      'allow_sms': instance.allowSms,
      'allow_push': instance.allowPush,
    };
