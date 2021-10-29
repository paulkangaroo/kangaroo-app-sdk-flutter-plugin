// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOffersModel _$UserOffersModelFromJson(Map<String, dynamic> json) =>
    UserOffersModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserOffersModelToJson(UserOffersModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
