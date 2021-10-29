// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerUsersModel _$FrequentBuyerUsersModelFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerUsersModel(
      id: json['id'] as int?,
      status: json['status'] as int?,
      purchasesCount: json['purchases_count'] as int?,
    );

Map<String, dynamic> _$FrequentBuyerUsersModelToJson(
        FrequentBuyerUsersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'purchases_count': instance.purchasesCount,
    };
