// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_message_gift_card_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessageGiftCardQueue _$TransferMessageGiftCardQueueFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferMessageGiftCardQueue',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'enabled',
            'sender_name',
            'recipient_name',
            'email_phone',
            'points',
            'amount',
            'created_at',
            'scheduled_at'
          ],
        );
        final val = TransferMessageGiftCardQueue(
          id: $checkedConvert('id', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          senderName: $checkedConvert('sender_name', (v) => v as String?),
          recipientName: $checkedConvert('recipient_name', (v) => v as String?),
          emailPhone: $checkedConvert('email_phone', (v) => v as String?),
          points: $checkedConvert('points', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          scheduledAt: $checkedConvert('scheduled_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'senderName': 'sender_name',
        'recipientName': 'recipient_name',
        'emailPhone': 'email_phone',
        'createdAt': 'created_at',
        'scheduledAt': 'scheduled_at'
      },
    );

Map<String, dynamic> _$TransferMessageGiftCardQueueToJson(
        TransferMessageGiftCardQueue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'sender_name': instance.senderName,
      'recipient_name': instance.recipientName,
      'email_phone': instance.emailPhone,
      'points': instance.points,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'scheduled_at': instance.scheduledAt,
    };
