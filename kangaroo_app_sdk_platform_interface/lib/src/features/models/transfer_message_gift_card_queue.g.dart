// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_message_gift_card_queue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessageGiftCardQueue _$TransferMessageGiftCardQueueFromJson(
        Map<String, dynamic> json) =>
    TransferMessageGiftCardQueue(
      id: json['id'] as int?,
      enabled: json['enabled'] as bool?,
      senderName: json['sender_name'] as String?,
      recipientName: json['recipient_name'] as String?,
      emailPhone: json['email_phone'] as String?,
      points: json['points'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
      scheduledAt: json['scheduled_at'] as String?,
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
