// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_ala_carte_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAlaCarteIncluded _$UserAlaCarteIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserAlaCarteIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['product_rewards'],
        );
        final val = UserAlaCarteIncluded(
          productRewards: $checkedConvert(
              'product_rewards',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      AlaCarteItemModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'productRewards': 'product_rewards'},
    );

Map<String, dynamic> _$UserAlaCarteIncludedToJson(
        UserAlaCarteIncluded instance) =>
    <String, dynamic>{
      'product_rewards':
          instance.productRewards?.map((e) => e.toJson()).toList(),
    };
