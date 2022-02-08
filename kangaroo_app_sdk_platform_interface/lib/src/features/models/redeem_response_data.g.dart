// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemResponseData _$RedeemResponseDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RedeemResponseData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'amount',
            'points',
            'name',
            'created_at',
            'updated_at',
            'customer'
          ],
        );
        final val = RedeemResponseData(
          id: $checkedConvert('id', (v) => v as int),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
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
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$RedeemResponseDataToJson(RedeemResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };
