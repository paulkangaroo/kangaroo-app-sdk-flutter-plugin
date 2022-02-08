// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferModel _$TransferModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferModel',
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
            'amount'
          ],
        );
        final val = TransferModel(
          intent: $checkedConvert('intent', (v) => v as String),
          businessId: $checkedConvert('business_id', (v) => v as String),
          language: $checkedConvert('language', (v) => v as String),
          from: $checkedConvert(
              'from', (v) => TransferFrom.fromJson(v as Map<String, dynamic>)),
          to: $checkedConvert(
              'to', (v) => TransferTo.fromJson(v as Map<String, dynamic>)),
          points: $checkedConvert('points', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {'businessId': 'business_id'},
    );

Map<String, dynamic> _$TransferModelToJson(TransferModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'business_id': instance.businessId,
      'language': instance.language,
      'from': instance.from.toJson(),
      'to': instance.to.toJson(),
      'points': instance.points,
      'amount': instance.amount,
    };
