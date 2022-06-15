// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_redemption_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponRedemptionResponseModel _$CouponRedemptionResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CouponRedemptionResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = CouponRedemptionResponseModel(
          data: $checkedConvert(
              'data',
              (v) => CouponRedemptionResponseData.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CouponRedemptionResponseModelToJson(
        CouponRedemptionResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
