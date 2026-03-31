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
          allowedKeys: const [
            'data',
            'meta',
            'searchRefinements',
            'refinementMatchCount'
          ],
        );
        final val = UserRewardsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : UserRewardsData.fromJson(v as Map<String, dynamic>)),
          meta: $checkedConvert(
              'meta',
              (v) =>
                  v == null ? null : Meta.fromJson(v as Map<String, dynamic>)),
          searchRefinements: $checkedConvert(
              'searchRefinements',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      SearchRefinement.fromJson(e as Map<String, dynamic>))
                  .toList()),
          refinementMatchCount: $checkedConvert(
              'refinementMatchCount', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserRewardsModelToJson(UserRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'meta': instance.meta?.toJson(),
      'searchRefinements':
          instance.searchRefinements?.map((e) => e.toJson()).toList(),
      'refinementMatchCount': instance.refinementMatchCount,
    };
