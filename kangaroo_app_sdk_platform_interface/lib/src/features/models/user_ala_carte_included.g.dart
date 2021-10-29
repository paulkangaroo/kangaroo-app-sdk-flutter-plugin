// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ala_carte_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAlaCarteIncluded _$UserAlaCarteIncludedFromJson(
        Map<String, dynamic> json) =>
    UserAlaCarteIncluded(
      productRewards: (json['product_rewards'] as List<dynamic>)
          .map((e) => AlaCarteItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserAlaCarteIncludedToJson(
        UserAlaCarteIncluded instance) =>
    <String, dynamic>{
      'product_rewards':
          instance.productRewards.map((e) => e.toJson()).toList(),
    };
