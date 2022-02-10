// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_strings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationStringsModel _$ApplicationStringsModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ApplicationStringsModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = ApplicationStringsModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      ApplicationString.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApplicationStringsModelToJson(
        ApplicationStringsModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
