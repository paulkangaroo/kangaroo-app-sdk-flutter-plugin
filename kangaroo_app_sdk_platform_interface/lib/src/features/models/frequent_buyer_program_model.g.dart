// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_program_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerProgramModel _$FrequentBuyerProgramModelFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerProgramModel(
      id: json['id'] as int?,
      enabled: json['enabled'] as bool?,
      title: json['title'] as String?,
      buyUnits: json['buy_units'] as int?,
      getUnits: json['get_units'] as int?,
      resetInterval: json['reset_interval'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$FrequentBuyerProgramModelToJson(
        FrequentBuyerProgramModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enabled': instance.enabled,
      'title': instance.title,
      'buy_units': instance.buyUnits,
      'get_units': instance.getUnits,
      'reset_interval': instance.resetInterval,
      'created_at': instance.createdAt,
    };
