// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_redemption_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonRedemptionCustomerModel _$AmazonRedemptionCustomerModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AmazonRedemptionCustomerModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id'],
        );
        final val = AmazonRedemptionCustomerModel(
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AmazonRedemptionCustomerModelToJson(
        AmazonRedemptionCustomerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
