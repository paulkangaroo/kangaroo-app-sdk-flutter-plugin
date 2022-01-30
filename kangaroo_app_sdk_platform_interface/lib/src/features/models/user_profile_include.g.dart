// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_include.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileInclude _$UserProfileIncludeFromJson(Map<String, dynamic> json) =>
    UserProfileInclude(
      balance: UserProfileBalanceData.fromJson(
          json['balance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileIncludeToJson(UserProfileInclude instance) =>
    <String, dynamic>{
      'balance': instance.balance.toJson(),
    };
