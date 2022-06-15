// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CouponModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'qrcode',
            'coupon_locked',
            'coupon_redeemed',
            'coupon_type',
            'expires_at',
            'offer'
          ],
        );
        final val = CouponModel(
          id: $checkedConvert('id', (v) => v as int?),
          qrcode: $checkedConvert('qrcode', (v) => v as String?),
          couponLocked: $checkedConvert('coupon_locked', (v) => v as bool?),
          couponRedeemed: $checkedConvert('coupon_redeemed', (v) => v as bool?),
          couponType: $checkedConvert('coupon_type', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
          offer: $checkedConvert(
              'offer',
              (v) => v == null
                  ? null
                  : OfferModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'couponLocked': 'coupon_locked',
        'couponRedeemed': 'coupon_redeemed',
        'couponType': 'coupon_type',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$CouponModelToJson(CouponModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qrcode': instance.qrcode,
      'coupon_locked': instance.couponLocked,
      'coupon_redeemed': instance.couponRedeemed,
      'coupon_type': instance.couponType,
      'expires_at': instance.expiresAt,
      'offer': instance.offer?.toJson(),
    };
