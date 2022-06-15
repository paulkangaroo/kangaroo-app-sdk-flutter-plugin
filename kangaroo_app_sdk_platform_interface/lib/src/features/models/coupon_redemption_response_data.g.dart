// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_redemption_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponRedemptionResponseData _$CouponRedemptionResponseDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CouponRedemptionResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'amount',
            'points',
            'name',
            'transaction_type',
            'created_at',
            'updated_at',
            'customer'
          ],
        );
        final val = CouponRedemptionResponseData(
          id: $checkedConvert('id', (v) => v as int),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          transactionType:
              $checkedConvert('transaction_type', (v) => v as int?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          customer: $checkedConvert(
              'customer',
              (v) => v == null
                  ? null
                  : UserProfileModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'transactionType': 'transaction_type',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$CouponRedemptionResponseDataToJson(
        CouponRedemptionResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'transaction_type': instance.transactionType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };
