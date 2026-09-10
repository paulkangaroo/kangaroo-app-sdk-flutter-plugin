// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_reward_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicRewardResponseModel _$PublicRewardResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicRewardResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicRewardResponseModel(
          data: $checkedConvert('data',
              (v) => PublicRewardModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicRewardResponseModelToJson(
        PublicRewardResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
