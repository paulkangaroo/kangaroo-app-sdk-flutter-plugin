// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRequestModel _$TransferRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferRequestModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'intent',
            'business_id',
            'language',
            'from',
            'to',
            'points',
            'amount',
            'giftcard_id'
          ],
        );
        final val = TransferRequestModel(
          intent: $checkedConvert('intent', (v) => v as String),
          businessId: $checkedConvert('business_id', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          from: $checkedConvert('from',
              (v) => TransferRequestFrom.fromJson(v as Map<String, dynamic>)),
          to: $checkedConvert('to',
              (v) => TransferRequestTo.fromJson(v as Map<String, dynamic>)),
          points: $checkedConvert('points', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          giftcardId: $checkedConvert('giftcard_id', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'businessId': 'business_id',
        'giftcardId': 'giftcard_id'
      },
    );

Map<String, dynamic> _$TransferRequestModelToJson(
        TransferRequestModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'business_id': instance.businessId,
      'language': instance.language,
      'from': instance.from.toJson(),
      'to': instance.to.toJson(),
      'points': instance.points,
      'amount': instance.amount,
      'giftcard_id': instance.giftcardId,
    };
