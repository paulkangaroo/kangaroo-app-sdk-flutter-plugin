/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'campaign.g.dart';

/// The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Campaign {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "subject")
  final String? subject;

  @JsonKey(name: "html_content")
  final String? htmlContent;

  @JsonKey(name: "plain_content")
  final String? plainContent;

  @JsonKey(name: "push_title")
  final String? pushTitle;

  @JsonKey(name: "push_body")
  final String? pushBody;

  @JsonKey(name: "push_link")
  final String? pushLink;

  @JsonKey(name: "push_image")
  final String? pushImage;

  @JsonKey(name: "offers")
  final List<OfferModel>? offers;

  @JsonKey(name: "business")
  final BusinessData? business;

  Campaign({
    required this.id,
    required this.subject,
    required this.htmlContent,
    required this.plainContent,
    required this.pushTitle,
    required this.pushBody,
    required this.pushLink,
    required this.pushImage,
    required this.offers,
    required this.business,
  });

  factory Campaign.fromJson(Map<String, dynamic> data) => _$CampaignFromJson(data);

  Map<String, dynamic> toJson() => _$CampaignToJson(this);
}


