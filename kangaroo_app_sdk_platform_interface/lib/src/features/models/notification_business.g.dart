// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_business.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationBusiness _$NotificationBusinessFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationBusiness',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'name', 'settings'],
        );
        final val = NotificationBusiness(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          settings: $checkedConvert(
              'settings',
              (v) => v == null
                  ? null
                  : NotificationBusinessSettings.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$NotificationBusinessToJson(
        NotificationBusiness instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'settings': instance.settings?.toJson(),
    };
