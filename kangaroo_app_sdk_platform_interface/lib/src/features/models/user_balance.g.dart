// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBalance _$UserBalanceFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserBalance',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['points', 'giftcard'],
        );
        final val = UserBalance(
          points: $checkedConvert('points', (v) => v as int?),
          giftcard: $checkedConvert('giftcard', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBalanceToJson(UserBalance instance) =>
    <String, dynamic>{
      'points': instance.points,
      'giftcard': instance.giftcard,
    };
