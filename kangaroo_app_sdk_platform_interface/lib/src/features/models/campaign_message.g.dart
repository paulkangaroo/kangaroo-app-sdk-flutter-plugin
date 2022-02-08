// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignMessage _$CampaignMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CampaignMessage',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'cell_email',
            'subject',
            'sent_at',
            'message',
            'campaign'
          ],
        );
        final val = CampaignMessage(
          id: $checkedConvert('id', (v) => v as String?),
          cellEmail: $checkedConvert('cell_email', (v) => v as int?),
          subject: $checkedConvert('subject', (v) => v as String?),
          sentAt: $checkedConvert('sent_at', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          campaign: $checkedConvert(
              'campaign',
              (v) => v == null
                  ? null
                  : Campaign.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'cellEmail': 'cell_email', 'sentAt': 'sent_at'},
    );

Map<String, dynamic> _$CampaignMessageToJson(CampaignMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cell_email': instance.cellEmail,
      'subject': instance.subject,
      'sent_at': instance.sentAt,
      'message': instance.message,
      'campaign': instance.campaign?.toJson(),
    };
