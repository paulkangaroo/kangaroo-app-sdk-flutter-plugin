// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceDetailsModel _$BalanceDetailsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BalanceDetailsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['points', 'giftcard'],
        );
        final val = BalanceDetailsModel(
          points: $checkedConvert('points', (v) => (v as num?)?.toDouble()),
          giftcard: $checkedConvert('giftcard', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$BalanceDetailsModelToJson(
        BalanceDetailsModel instance) =>
    <String, dynamic>{
      'points': instance.points,
      'giftcard': instance.giftcard,
    };
