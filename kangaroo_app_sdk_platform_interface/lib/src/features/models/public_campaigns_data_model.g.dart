// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_campaigns_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicCampaignsDataModel _$PublicCampaignsDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicCampaignsDataModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'group_id',
            'name',
            'subject',
            'html_content',
            'plain_content',
            'push_title',
            'push_body',
            'push_link',
            'push_image',
            'status',
            'type',
            'frequency',
            'created_at',
            'scheduled_at',
            'expires_at',
            'offers',
            'business'
          ],
        );
        final val = PublicCampaignsDataModel(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          groupId: $checkedConvert('group_id', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          subject: $checkedConvert('subject', (v) => v as String?),
          htmlContent: $checkedConvert('html_content', (v) => v as String?),
          plainContent: $checkedConvert('plain_content', (v) => v as String?),
          pushTitle: $checkedConvert('push_title', (v) => v as String?),
          pushBody: $checkedConvert('push_body', (v) => v as String?),
          pushLink: $checkedConvert('push_link', (v) => v as String?),
          pushImage: $checkedConvert('push_image', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          frequency: $checkedConvert('frequency', (v) => (v as num?)?.toInt()),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          scheduledAt: $checkedConvert('scheduled_at', (v) => v as String?),
          expiresAt: $checkedConvert('expires_at', (v) => v as String?),
          offers: $checkedConvert(
              'offers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      OfferRewardDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          business: $checkedConvert(
              'business',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'groupId': 'group_id',
        'htmlContent': 'html_content',
        'plainContent': 'plain_content',
        'pushTitle': 'push_title',
        'pushBody': 'push_body',
        'pushLink': 'push_link',
        'pushImage': 'push_image',
        'createdAt': 'created_at',
        'scheduledAt': 'scheduled_at',
        'expiresAt': 'expires_at'
      },
    );

Map<String, dynamic> _$PublicCampaignsDataModelToJson(
        PublicCampaignsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_id': instance.groupId,
      'name': instance.name,
      'subject': instance.subject,
      'html_content': instance.htmlContent,
      'plain_content': instance.plainContent,
      'push_title': instance.pushTitle,
      'push_body': instance.pushBody,
      'push_link': instance.pushLink,
      'push_image': instance.pushImage,
      'status': instance.status,
      'type': instance.type,
      'frequency': instance.frequency,
      'created_at': instance.createdAt,
      'scheduled_at': instance.scheduledAt,
      'expires_at': instance.expiresAt,
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'business': instance.business?.toJson(),
    };
