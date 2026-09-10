/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_reward_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_reward_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'public_campaigns_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicCampaignsDataModel {
  @JsonKey(name: "id")
  final int? id;

  @JsonKey(name: "group_id")
  final int? groupId;

  @JsonKey(name: "name")
  final String? name;

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

  @JsonKey(name: "status")
  final String? status;

  @JsonKey(name: "type")
  final String? type;

  @JsonKey(name: "frequency")
  final int? frequency;

  @JsonKey(name: "created_at")
  final String? createdAt;

  @JsonKey(name: "scheduled_at")
  final String? scheduledAt;

  @JsonKey(name: "expires_at")
  final String? expiresAt;

  @JsonKey(name: "offers")
  final List<OfferRewardDataModel>? offers;

  @JsonKey(name: "business")
  final BusinessData? business;

  PublicCampaignsDataModel({
    required this.id,
    required this.groupId,
    required this.name,
    required this.subject,
    required this.htmlContent,
    required this.plainContent,
    required this.pushTitle,
    required this.pushBody,
    required this.pushLink,
    required this.pushImage,
    required this.status,
    required this.type,
    required this.frequency,
    required this.createdAt,
    required this.scheduledAt,
    required this.expiresAt,
    required this.offers,
    required this.business,
  });

  factory PublicCampaignsDataModel.fromJson(Map<String, dynamic> data) => _$PublicCampaignsDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicCampaignsDataModelToJson(this);
}


