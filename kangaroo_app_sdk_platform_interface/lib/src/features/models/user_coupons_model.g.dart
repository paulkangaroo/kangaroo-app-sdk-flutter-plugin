// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_coupons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCouponsModel _$UserCouponsModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserCouponsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = UserCouponsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => CouponModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserCouponsModelToJson(UserCouponsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
