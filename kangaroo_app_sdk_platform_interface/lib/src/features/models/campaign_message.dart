/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign.dart';

part 'campaign_message.g.dart';

/// Campaign Message. These are sent to the user by the business through Kangaroo's Marketing module. 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CampaignMessage {
  ///Unique campaign ID. 
  final String? id;

  ///The original delivery method for this campaign 
  final int? cellEmail;

  ///The title for this campaign. 
  final String? subject;

  ///The original send date of this campaign. 
  final String? sentAt;

  ///A short / simple message for this campaign. 
  final String? message;

  final Campaign? campaign;

  CampaignMessage({
    required this.id,
    required this.cellEmail,
    required this.subject,
    required this.sentAt,
    required this.message,
    required this.campaign,
  });

  factory CampaignMessage.fromJson(Map<String, dynamic> data) => _$CampaignMessageFromJson(data);

  Map<String, dynamic> toJson() => _$CampaignMessageToJson(this);
}


