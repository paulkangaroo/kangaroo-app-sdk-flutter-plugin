// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerUsersModel _$FrequentBuyerUsersModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'FrequentBuyerUsersModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'status', 'purchases_count'],
        );
        final val = FrequentBuyerUsersModel(
          id: $checkedConvert('id', (v) => v as int?),
          status: $checkedConvert('status', (v) => v as int?),
          purchasesCount: $checkedConvert('purchases_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {'purchasesCount': 'purchases_count'},
    );

Map<String, dynamic> _$FrequentBuyerUsersModelToJson(
        FrequentBuyerUsersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'purchases_count': instance.purchasesCount,
    };
