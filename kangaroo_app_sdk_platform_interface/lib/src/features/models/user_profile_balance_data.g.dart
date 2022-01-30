// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_balance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileBalanceData _$UserProfileBalanceDataFromJson(
        Map<String, dynamic> json) =>
    UserProfileBalanceData(
      points: json['points'] as int?,
      giftcard: (json['giftcard'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UserProfileBalanceDataToJson(
        UserProfileBalanceData instance) =>
    <String, dynamic>{
      'points': instance.points,
      'giftcard': instance.giftcard,
    };
