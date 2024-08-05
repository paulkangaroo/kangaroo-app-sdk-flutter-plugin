// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_business_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationBusinessSettings _$NotificationBusinessSettingsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationBusinessSettings',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['double_opt_in'],
        );
        final val = NotificationBusinessSettings(
          doubleOptIn: $checkedConvert('double_opt_in', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'doubleOptIn': 'double_opt_in'},
    );

Map<String, dynamic> _$NotificationBusinessSettingsToJson(
        NotificationBusinessSettings instance) =>
    <String, dynamic>{
      'double_opt_in': instance.doubleOptIn,
    };
