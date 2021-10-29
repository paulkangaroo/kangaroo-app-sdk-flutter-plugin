// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequent_buyer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequentBuyerModel _$FrequentBuyerModelFromJson(Map<String, dynamic> json) =>
    FrequentBuyerModel(
      data: UserProfileData.fromJson(json['data'] as Map<String, dynamic>),
      included: FrequentBuyerIncluded.fromJson(
          json['included'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrequentBuyerModelToJson(FrequentBuyerModel instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'included': instance.included.toJson(),
    };
