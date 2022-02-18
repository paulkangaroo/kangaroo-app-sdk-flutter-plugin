// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_business_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationBusinessPayload _$NotificationBusinessPayloadFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationBusinessPayload',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id'],
        );
        final val = NotificationBusinessPayload(
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$NotificationBusinessPayloadToJson(
        NotificationBusinessPayload instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
