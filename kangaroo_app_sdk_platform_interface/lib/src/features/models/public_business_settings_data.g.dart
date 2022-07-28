// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_business_settings_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicBusinessSettingsData _$PublicBusinessSettingsDataFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicBusinessSettingsData',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['business'],
        );
        final val = PublicBusinessSettingsData(
          business: $checkedConvert(
              'business',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicBusinessSettingsDataToJson(
        PublicBusinessSettingsData instance) =>
    <String, dynamic>{
      'business': instance.business?.toJson(),
    };
