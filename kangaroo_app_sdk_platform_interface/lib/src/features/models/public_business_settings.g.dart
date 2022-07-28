// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_business_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicBusinessSettings _$PublicBusinessSettingsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicBusinessSettings',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicBusinessSettings(
          data: $checkedConvert(
              'data',
              (v) => v == null
                  ? null
                  : PublicBusinessSettingsData.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicBusinessSettingsToJson(
        PublicBusinessSettings instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };
