// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_action_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferActionResultModel _$TransferActionResultModelFromJson(
        Map<String, dynamic> json) =>
    TransferActionResultModel(
      data: json['data'] == null
          ? null
          : TransferMessage.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransferActionResultModelToJson(
        TransferActionResultModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
