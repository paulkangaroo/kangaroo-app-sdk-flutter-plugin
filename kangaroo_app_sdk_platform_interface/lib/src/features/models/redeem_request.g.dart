// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemRequest _$RedeemRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RedeemRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['branch_id', 'catalog_items', 'intent'],
        );
        final val = RedeemRequest(
          branchId: $checkedConvert('branch_id', (v) => v as String),
          catalogItems: $checkedConvert(
              'catalog_items',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RedemptionModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          intent: $checkedConvert('intent', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'branchId': 'branch_id',
        'catalogItems': 'catalog_items'
      },
    );

Map<String, dynamic> _$RedeemRequestToJson(RedeemRequest instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'catalog_items': instance.catalogItems.map((e) => e.toJson()).toList(),
      'intent': instance.intent,
    };
