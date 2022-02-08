// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerItemModel _$FrequentBuyerItemModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerItemModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'title',
            'buy_units',
            'get_units',
            'reset_interval',
            'created_at',
            'frequent_buyer_users'
          ],
        );
        final val = FrequentBuyerItemModel(
          id: $checkedConvert('id', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          buyUnits: $checkedConvert('buy_units', (v) => v as int?),
          getUnits: $checkedConvert('get_units', (v) => v as int?),
          resetInterval: $checkedConvert('reset_interval', (v) => v as int?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          frequentBuyerUsers: $checkedConvert(
              'frequent_buyer_users',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => FrequentBuyerUsersModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'buyUnits': 'buy_units',
        'getUnits': 'get_units',
        'resetInterval': 'reset_interval',
        'createdAt': 'created_at',
        'frequentBuyerUsers': 'frequent_buyer_users'
      },
    );

Map<String, dynamic> _$FrequentBuyerItemModelToJson(
        FrequentBuyerItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'buy_units': instance.buyUnits,
      'get_units': instance.getUnits,
      'reset_interval': instance.resetInterval,
      'created_at': instance.createdAt,
      'frequent_buyer_users':
          instance.frequentBuyerUsers?.map((e) => e.toJson()).toList(),
    };
