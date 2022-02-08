// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claimed_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClaimedOfferModel _$ClaimedOfferModelFromJson(Map<String, dynamic> json) =>
    ClaimedOfferModel(
      data: json['data'] == null
          ? null
          : OfferModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClaimedOfferModelToJson(ClaimedOfferModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
