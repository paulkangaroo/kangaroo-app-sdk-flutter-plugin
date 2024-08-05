// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionsDataModel _$PromotionsDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PromotionsDataModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'name', 'offers', 'rewards'],
        );
        final val = PromotionsDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          offers: $checkedConvert(
              'offers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          rewards: $checkedConvert(
              'rewards',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => RewardModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PromotionsDataModelToJson(
        PromotionsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'rewards': instance.rewards?.map((e) => e.toJson()).toList(),
    };
