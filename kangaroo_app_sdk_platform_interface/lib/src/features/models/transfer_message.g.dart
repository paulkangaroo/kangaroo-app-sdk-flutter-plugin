// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessage _$TransferMessageFromJson(Map<String, dynamic> json) =>
    TransferMessage(
      id: json['id'] as int?,
      typeId: json['type_id'] as int?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      points: json['points'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      hidden: json['hidden'] as bool?,
      createdAt: json['created_at'] as String?,
      offer: json['offer'] == null
          ? null
          : OfferModel.fromJson(json['offer'] as Map<String, dynamic>),
      giftCardQueue: json['gift_card_queue'] == null
          ? null
          : TransferMessageGiftCardQueue.fromJson(
              json['gift_card_queue'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>?)
          ?.map(
              (e) => TransferMessageActions.fromJson(e as Map<String, dynamic>))
          .toList(),
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
    };
