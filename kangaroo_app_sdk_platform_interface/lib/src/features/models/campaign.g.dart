// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Campaign _$CampaignFromJson(Map<String, dynamic> json) => Campaign(
      id: json['id'] as int?,
      subject: json['subject'] as String?,
      htmlContent: json['html_content'] as String?,
      plainContent: json['plain_content'] as String?,
      pushTitle: json['push_title'] as String?,
      pushBody: json['push_body'] as String?,
      pushLink: json['push_link'] as String?,
      pushImage: json['push_image'] as String?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      business: json['business'] == null
          ? null
          : BusinessData.fromJson(json['business'] as Map<String, dynamic>),
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
