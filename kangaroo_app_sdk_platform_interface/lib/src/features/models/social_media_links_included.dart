/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_link_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_link_list.dart';

part 'social_media_links_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SocialMediaLinksIncluded {
  @JsonKey(name: "social_media")
  final SocialMediaLinkList? socialMedia;

  SocialMediaLinksIncluded({
    required this.socialMedia,
  });

  factory SocialMediaLinksIncluded.fromJson(Map<String, dynamic> data) => _$SocialMediaLinksIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaLinksIncludedToJson(this);
}


