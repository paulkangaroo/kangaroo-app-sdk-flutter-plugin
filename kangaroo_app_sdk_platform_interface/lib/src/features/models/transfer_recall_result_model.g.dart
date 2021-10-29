// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_recall_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRecallResultModel _$TransferRecallResultModelFromJson(
        Map<String, dynamic> json) =>
    TransferRecallResultModel(
      data: TransferMessage.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransferRecallResultModelToJson(
        TransferRecallResultModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };
