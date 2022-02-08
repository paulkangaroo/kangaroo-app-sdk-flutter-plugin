// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_transaction_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserTransactionHistoryModel _$UserTransactionHistoryModelFromJson(
        Map<String, dynamic> json) =>
    UserTransactionHistoryModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserTransactionHistoryModelToJson(
        UserTransactionHistoryModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
