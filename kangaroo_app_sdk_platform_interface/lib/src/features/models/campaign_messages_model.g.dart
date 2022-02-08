// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignMessagesModel _$CampaignMessagesModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CampaignMessagesModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = CampaignMessagesModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      CampaignMessage.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$CampaignMessagesModelToJson(
        CampaignMessagesModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
