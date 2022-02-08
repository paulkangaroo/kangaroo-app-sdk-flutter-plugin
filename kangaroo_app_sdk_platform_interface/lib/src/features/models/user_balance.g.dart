// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBalance _$UserBalanceFromJson(Map<String, dynamic> json) => UserBalance(
      points: json['points'] as int?,
      giftcard: (json['giftcard'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserBalanceToJson(UserBalance instance) =>
    <String, dynamic>{
      'points': instance.points,
      'giftcard': instance.giftcard,
    };
