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
          allowedKeys: const [
            'data',
            'meta',
            'searchRefinements',
            'refinementMatchCount'
          ],
        );
        final val = PublicRewardsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
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

Map<String, dynamic> _$PublicRewardsModelToJson(PublicRewardsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
      'searchRefinements':
          instance.searchRefinements?.map((e) => e.toJson()).toList(),
      'refinementMatchCount': instance.refinementMatchCount,
    };
