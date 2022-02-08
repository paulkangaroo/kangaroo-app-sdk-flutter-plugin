// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferFrom _$TransferFromFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferFrom',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name'],
        );
        final val = TransferFrom(
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferFromToJson(TransferFrom instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
