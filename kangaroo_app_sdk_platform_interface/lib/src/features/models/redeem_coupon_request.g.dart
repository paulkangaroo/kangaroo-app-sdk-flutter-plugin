// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_coupon_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemCouponRequest _$RedeemCouponRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RedeemCouponRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['intent', 'pin_code', 'coupon', 'offer', 'int'],
        );
        final val = RedeemCouponRequest(
          intent: $checkedConvert('intent', (v) => v as String),
          pinCode: $checkedConvert('pin_code', (v) => v as String),
          coupon: $checkedConvert('coupon',
              (v) => CouponRedemptionModel.fromJson(v as Map<String, dynamic>)),
          offer: $checkedConvert('offer',
              (v) => OfferRedemptionModel.fromJson(v as Map<String, dynamic>)),
          int: $checkedConvert('int', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'pinCode': 'pin_code'},
    );

Map<String, dynamic> _$RedeemCouponRequestToJson(
        RedeemCouponRequest instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'pin_code': instance.pinCode,
      'coupon': instance.coupon.toJson(),
      'offer': instance.offer.toJson(),
      'int': instance.int,
    };
