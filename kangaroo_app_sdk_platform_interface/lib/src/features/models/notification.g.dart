// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Notification',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'type_id',
            'type',
            'title',
            'description',
            'points',
            'amount',
            'hidden',
            'created_at'
          ],
        );
        final val = Notification(
          id: $checkedConvert('id', (v) => v as String?),
          typeId: $checkedConvert('type_id', (v) => (v as num?)?.toInt()),
          type: $checkedConvert('type', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          hidden: $checkedConvert('hidden', (v) => v as bool?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'typeId': 'type_id', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.typeId,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'points': instance.points,
      'amount': instance.amount,
      'hidden': instance.hidden,
      'created_at': instance.createdAt,
    };
