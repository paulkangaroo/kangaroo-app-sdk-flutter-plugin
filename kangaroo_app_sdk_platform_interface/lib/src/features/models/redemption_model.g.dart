// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedemptionModel _$RedemptionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RedemptionModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'quantity'],
        );
        final val = RedemptionModel(
          id: $checkedConvert('id', (v) => v as int),
          quantity: $checkedConvert('quantity', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$RedemptionModelToJson(RedemptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
    };
