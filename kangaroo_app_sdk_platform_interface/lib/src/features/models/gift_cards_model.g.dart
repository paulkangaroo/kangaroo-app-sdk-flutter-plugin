// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_cards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GiftCardsModel _$GiftCardsModelFromJson(Map<String, dynamic> json) =>
    GiftCardsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => GiftCardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GiftCardsModelToJson(GiftCardsModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
