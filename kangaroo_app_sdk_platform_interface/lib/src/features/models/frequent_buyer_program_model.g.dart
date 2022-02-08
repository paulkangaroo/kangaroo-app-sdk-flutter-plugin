// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_program_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramModel _$FrequentBuyerProgramModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerProgramModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'enabled',
            'title',
            'buy_units',
            'get_units',
            'reset_interval',
            'created_at'
          ],
        );
        final val = FrequentBuyerProgramModel(
          id: $checkedConvert('id', (v) => v as int?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          title: $checkedConvert('title', (v) => v as String?),
          buyUnits: $checkedConvert('buy_units', (v) => v as int?),
          getUnits: $checkedConvert('get_units', (v) => v as int?),
          resetInterval: $checkedConvert('reset_interval', (v) => v as int?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'buyUnits': 'buy_units',
        'getUnits': 'get_units',
        'resetInterval': 'reset_interval',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$FrequentBuyerProgramModelToJson(
        FrequentBuyerProgramModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'buy_units': instance.buyUnits,
      'get_units': instance.getUnits,
      'reset_interval': instance.resetInterval,
      'created_at': instance.createdAt,
    };
