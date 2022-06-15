// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicRewardsModel _$PublicRewardsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicRewardsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicRewardsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicRewardsModelToJson(PublicRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
