// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_coupons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessCouponsModel _$UserBusinessCouponsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessCouponsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data', 'included'],
        );
        final val = UserBusinessCouponsModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          included: $checkedConvert(
              'included',
              (v) => v == null
                  ? null
                  : UserBusinessCouponsData.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessCouponsModelToJson(
        UserBusinessCouponsModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'included': instance.included?.toJson(),
    };
