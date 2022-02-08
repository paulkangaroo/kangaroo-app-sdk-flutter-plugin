// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignMessage _$CampaignMessageFromJson(Map<String, dynamic> json) =>
    CampaignMessage(
      id: json['id'] as String?,
      cellEmail: json['cell_email'] as int?,
      subject: json['subject'] as String?,
      sentAt: json['sent_at'] as String?,
      message: json['message'] as String?,
      campaign: json['campaign'] == null
          ? null
          : Campaign.fromJson(json['campaign'] as Map<String, dynamic>),
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
