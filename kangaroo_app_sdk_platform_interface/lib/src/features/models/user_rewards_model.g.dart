// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRewardsModel _$UserRewardsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserRewardsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = UserRewardsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserRewardsData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserRewardsModelToJson(UserRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
