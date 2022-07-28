// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessRewardsModel _$UserBusinessRewardsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessRewardsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessRewardsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserRewardsData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessRewardsModelToJson(
        UserBusinessRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
