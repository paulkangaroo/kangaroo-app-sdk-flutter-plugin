// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_business_banners_included.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBusinessBannersIncluded _$UserBusinessBannersIncludedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserBusinessBannersIncluded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['banners'],
        );
        final val = UserBusinessBannersIncluded(
          banners: $checkedConvert(
              'banners',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserBusinessBannersIncludedToJson(
        UserBusinessBannersIncluded instance) =>
    <String, dynamic>{
      'banners': instance.banners?.map((e) => e.toJson()).toList(),
    };
