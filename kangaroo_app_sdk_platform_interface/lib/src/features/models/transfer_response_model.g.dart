// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferResponseModel _$TransferResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferResponseModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = TransferResponseModel(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : TransferDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferResponseModelToJson(
        TransferResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
