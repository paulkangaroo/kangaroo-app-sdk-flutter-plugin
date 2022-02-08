// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferMessagesModel _$TransferMessagesModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferMessagesModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = TransferMessagesModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TransferMessage.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$TransferMessagesModelToJson(
        TransferMessagesModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
