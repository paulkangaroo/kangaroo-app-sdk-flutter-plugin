/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'campaign.g.dart';

/// The core campaign object for this campaign. This might include data such as the original html content of the campaign, sms or push data, or offers and rewards attached to this campaign. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Campaign {
  final int id;

  final String? subject;

  final String? htmlContent;

  final String? plainContent;

  final String? pushTitle;

  final String? pushBody;

  final String? pushLink;

  final String? pushImage;

  final List<OfferModel>? offers;

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


