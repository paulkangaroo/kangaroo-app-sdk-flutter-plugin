// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferModel _$TransferModelFromJson(Map<String, dynamic> json) =>
    TransferModel(
      intent: json['intent'] as String,
      language: json['language'] as String,
      points: json['points'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      to: json['to'] == null
          ? null
          : TransferTo.fromJson(json['to'] as Map<String, dynamic>),
      from: json['from'] == null
          ? null
          : TransferFrom.fromJson(json['from'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransferModelToJson(TransferModel instance) =>
    <String, dynamic>{
      'intent': instance.intent,
      'language': instance.language,
      'points': instance.points,
      'amount': instance.amount,
      'to': instance.to?.toJson(),
      'from': instance.from?.toJson(),
    };
