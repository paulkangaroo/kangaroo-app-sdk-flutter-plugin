/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign_message.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/campaign_message.dart';

part 'campaign_messages_model.g.dart';

/// Contains a list of campaign messages sent to this user
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CampaignMessagesModel {
  ///List of campaign messages. 
  final List<CampaignMessage>? data;

  CampaignMessagesModel({
    required this.data,
  });

  factory CampaignMessagesModel.fromJson(Map<String, dynamic> data) => _$CampaignMessagesModelFromJson(data);

  Map<String, dynamic> toJson() => _$CampaignMessagesModelToJson(this);
}


