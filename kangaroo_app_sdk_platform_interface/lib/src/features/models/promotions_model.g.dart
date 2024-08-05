// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionsModel _$PromotionsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PromotionsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PromotionsModel(
          data: $checkedConvert('data',
              (v) => PromotionsDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PromotionsModelToJson(PromotionsModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
