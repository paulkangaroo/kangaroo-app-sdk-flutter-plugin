// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardResponseModel _$RewardResponseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'RewardResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = RewardResponseModel(
          data: $checkedConvert(
              'data', (v) => RewardModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$RewardResponseModelToJson(
        RewardResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
