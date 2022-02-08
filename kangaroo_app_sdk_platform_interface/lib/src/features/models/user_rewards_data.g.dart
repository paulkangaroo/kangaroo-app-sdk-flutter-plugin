// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rewards_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewardsData _$UserRewardsDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserRewardsData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['catalog_items'],
        );
        final val = UserRewardsData(
          catalogItems: $checkedConvert(
              'catalog_items',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'catalogItems': 'catalog_items'},
    );

Map<String, dynamic> _$UserRewardsDataToJson(UserRewardsData instance) =>
    <String, dynamic>{
      'catalog_items': instance.catalogItems?.map((e) => e.toJson()).toList(),
    };
