// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewardsModel _$UserRewardsModelFromJson(Map<String, dynamic> json) =>
    UserRewardsModel(
      data: json['data'] == null
          ? null
          : UserRewardsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRewardsModelToJson(UserRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
