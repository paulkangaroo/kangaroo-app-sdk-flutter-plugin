// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferModel _$TransferModelFromJson(Map<String, dynamic> json) =>
    TransferModel(
      intent: json['intent'] as String,
      businessId: json['business_id'] as String,
      language: json['language'] as String,
      from: TransferFrom.fromJson(json['from'] as Map<String, dynamic>),
      to: TransferTo.fromJson(json['to'] as Map<String, dynamic>),
      points: json['points'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TransferModelToJson(TransferModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'business_id': instance.businessId,
      'language': instance.language,
      'from': instance.from.toJson(),
      'to': instance.to.toJson(),
      'points': instance.points,
      'amount': instance.amount,
    };
