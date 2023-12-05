/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_action_model.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_action_model.dart';


part 'social_media_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SocialMediaModel {
  @JsonKey(name: "icon")
  final String? icon;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "business_action")
  final BusinessActionModel? businessAction;

  @JsonKey(name: "user_action_completed")
  final bool? userActionCompleted;

  SocialMediaModel({
    required this.icon,
    required this.url,
    required this.businessAction,
    required this.userActionCompleted,
  });

  factory SocialMediaModel.fromJson(Map<String, dynamic> data) => _$SocialMediaModelFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaModelToJson(this);
}


