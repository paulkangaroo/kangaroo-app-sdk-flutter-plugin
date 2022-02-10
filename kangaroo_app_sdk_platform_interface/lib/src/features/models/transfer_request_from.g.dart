// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_request_from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferRequestFrom _$TransferRequestFromFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferRequestFrom',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['name'],
        );
        final val = TransferRequestFrom(
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferRequestFromToJson(
        TransferRequestFrom instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
