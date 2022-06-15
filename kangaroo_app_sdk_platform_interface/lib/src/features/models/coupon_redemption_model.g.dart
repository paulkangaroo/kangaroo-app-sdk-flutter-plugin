// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_redemption_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponRedemptionModel _$CouponRedemptionModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CouponRedemptionModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id'],
        );
        final val = CouponRedemptionModel(
          id: $checkedConvert('id', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$CouponRedemptionModelToJson(
        CouponRedemptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
