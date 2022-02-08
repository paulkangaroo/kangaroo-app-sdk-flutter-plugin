// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_action_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferActionResultModel _$TransferActionResultModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferActionResultModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = TransferActionResultModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : TransferMessage.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferActionResultModelToJson(
        TransferActionResultModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
