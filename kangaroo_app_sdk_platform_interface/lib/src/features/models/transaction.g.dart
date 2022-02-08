// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      id: json['id'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      points: (json['points'] as num?)?.toDouble(),
      name: json['name'] as String?,
      transactionType: json['transaction_type'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'transaction_type': instance.transactionType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
