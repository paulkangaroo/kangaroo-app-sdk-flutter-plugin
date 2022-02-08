/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_links_included.dart';

part 'social_media_links_model.g.dart';

/// Social media links for this business
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class SocialMediaLinksModel {
  ///Contains all user data 
  final UserProfileDataModel? data;

  ///Contains social media links 
  final SocialMediaLinksIncluded? included;

  SocialMediaLinksModel({
    required this.data,
    required this.included,
  });

  factory SocialMediaLinksModel.fromJson(Map<String, dynamic> data) => _$SocialMediaLinksModelFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaLinksModelToJson(this);
}


