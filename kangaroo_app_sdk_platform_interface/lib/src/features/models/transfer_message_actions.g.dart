// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_message_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessageActions _$TransferMessageActionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferMessageActions',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['type'],
        );
        final val = TransferMessageActions(
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferMessageActionsToJson(
        TransferMessageActions instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
