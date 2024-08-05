// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_coupons_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessCouponsData _$UserBusinessCouponsDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessCouponsData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['coupons'],
        );
        final val = UserBusinessCouponsData(
          coupons: $checkedConvert(
              'coupons',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CouponModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessCouponsDataToJson(
        UserBusinessCouponsData instance) =>
    <String, dynamic>{
      'coupons': instance.coupons?.map((e) => e.toJson()).toList(),
    };
