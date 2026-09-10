// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderStatusModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'type_id',
            'type',
            'description',
            'points',
            'amount',
            'hidden',
            'created_at',
            'archived'
          ],
        );
        final val = OrderStatusModel(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          typeId: $checkedConvert('type_id', (v) => (v as num?)?.toInt()),
          type: $checkedConvert('type', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          hidden: $checkedConvert('hidden', (v) => v as bool?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          archived: $checkedConvert('archived', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {'typeId': 'type_id', 'createdAt': 'created_at'},
    );

Map<String, dynamic> _$OrderStatusModelToJson(OrderStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.typeId,
      'type': instance.type,
      'description': instance.description,
      'points': instance.points,
      'amount': instance.amount,
      'hidden': instance.hidden,
      'created_at': instance.createdAt,
      'archived': instance.archived,
    };
