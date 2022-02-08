// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemResponseModel _$RedeemResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RedeemResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = RedeemResponseModel(
          data: $checkedConvert('data',
              (v) => RedeemResponseData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$RedeemResponseModelToJson(
        RedeemResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
