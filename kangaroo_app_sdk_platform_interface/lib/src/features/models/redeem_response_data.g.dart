// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemResponseData _$RedeemResponseDataFromJson(Map<String, dynamic> json) =>
    RedeemResponseData(
      id: json['id'] as int,
      amount: (json['amount'] as num?)?.toDouble(),
      points: json['points'] as int?,
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserProfileModel.fromJson(json['customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RedeemResponseDataToJson(RedeemResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };
