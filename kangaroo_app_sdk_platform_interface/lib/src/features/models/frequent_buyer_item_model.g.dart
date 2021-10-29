// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerItemModel _$FrequentBuyerItemModelFromJson(
        Map<String, dynamic> json) =>
    FrequentBuyerItemModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      buyUnits: json['buy_units'] as int?,
      getUnits: json['get_units'] as int?,
      resetInterval: json['reset_interval'] as int?,
      createdAt: json['created_at'] as String?,
      frequentBuyerUsers: (json['frequent_buyer_users'] as List<dynamic>?)
          ?.map((e) =>
              FrequentBuyerUsersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FrequentBuyerItemModelToJson(
        FrequentBuyerItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'buy_units': instance.buyUnits,
      'get_units': instance.getUnits,
      'reset_interval': instance.resetInterval,
      'created_at': instance.createdAt,
      'frequent_buyer_users':
          instance.frequentBuyerUsers?.map((e) => e.toJson()).toList(),
    };
