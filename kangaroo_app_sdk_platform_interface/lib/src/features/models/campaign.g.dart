// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Campaign _$CampaignFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Campaign',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'subject',
            'html_content',
            'plain_content',
            'push_title',
            'push_body',
            'push_link',
            'push_image',
            'offers',
            'business'
          ],
        );
        final val = Campaign(
          id: $checkedConvert('id', (v) => v as int?),
          subject: $checkedConvert('subject', (v) => v as String?),
          htmlContent: $checkedConvert('html_content', (v) => v as String?),
          plainContent: $checkedConvert('plain_content', (v) => v as String?),
          pushTitle: $checkedConvert('push_title', (v) => v as String?),
          pushBody: $checkedConvert('push_body', (v) => v as String?),
          pushLink: $checkedConvert('push_link', (v) => v as String?),
          pushImage: $checkedConvert('push_image', (v) => v as String?),
          offers: $checkedConvert(
              'offers',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
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
        'htmlContent': 'html_content',
        'plainContent': 'plain_content',
        'pushTitle': 'push_title',
        'pushBody': 'push_body',
        'pushLink': 'push_link',
        'pushImage': 'push_image'
      },
    );

Map<String, dynamic> _$CampaignToJson(Campaign instance) => <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'html_content': instance.htmlContent,
      'plain_content': instance.plainContent,
      'push_title': instance.pushTitle,
      'push_body': instance.pushBody,
      'push_link': instance.pushLink,
      'push_image': instance.pushImage,
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'business': instance.business?.toJson(),
    };
