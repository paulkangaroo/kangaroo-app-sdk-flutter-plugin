// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_redemption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonRedemptionModel _$AmazonRedemptionModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AmazonRedemptionModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'quantity', 'external_product_id'],
        );
        final val = AmazonRedemptionModel(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
          externalProductId:
              $checkedConvert('external_product_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'externalProductId': 'external_product_id'},
    );

Map<String, dynamic> _$AmazonRedemptionModelToJson(
        AmazonRedemptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'external_product_id': instance.externalProductId,
    };
