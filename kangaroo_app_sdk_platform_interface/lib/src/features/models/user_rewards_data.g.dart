// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rewards_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewardsData _$UserRewardsDataFromJson(Map<String, dynamic> json) =>
    UserRewardsData(
      catalogItems: (json['catalog_items'] as List<dynamic>?)
          ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserRewardsDataToJson(UserRewardsData instance) =>
    <String, dynamic>{
      'catalog_items': instance.catalogItems?.map((e) => e.toJson()).toList(),
    };
