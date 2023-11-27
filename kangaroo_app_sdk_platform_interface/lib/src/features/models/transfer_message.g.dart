// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessage _$TransferMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferMessage',
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
            'offer',
            'gift_card_queue',
            'actions',
            'archived'
          ],
        );
        final val = TransferMessage(
          id: $checkedConvert('id', (v) => v as int?),
          typeId: $checkedConvert('type_id', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          points: $checkedConvert('points', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          hidden: $checkedConvert('hidden', (v) => v as bool?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          offer: $checkedConvert(
              'offer',
              (v) => v == null
                  ? null
                  : OfferModel.fromJson(v as Map<String, dynamic>)),
          giftCardQueue: $checkedConvert(
              'gift_card_queue',
              (v) => v == null
                  ? null
                  : TransferMessageGiftCardQueue.fromJson(
                      v as Map<String, dynamic>)),
          actions: $checkedConvert(
              'actions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => TransferMessageActions.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          archived: $checkedConvert('archived', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'typeId': 'type_id',
        'createdAt': 'created_at',
        'giftCardQueue': 'gift_card_queue'
      },
    );

Map<String, dynamic> _$TransferMessageToJson(TransferMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_id': instance.typeId,
      'type': instance.type,
      'description': instance.description,
      'points': instance.points,
      'amount': instance.amount,
      'hidden': instance.hidden,
      'created_at': instance.createdAt,
      'offer': instance.offer?.toJson(),
      'gift_card_queue': instance.giftCardQueue?.toJson(),
      'actions': instance.actions?.map((e) => e.toJson()).toList(),
      'archived': instance.archived,
    };
