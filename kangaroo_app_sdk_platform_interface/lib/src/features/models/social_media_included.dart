/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_list.dart';

part 'social_media_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class SocialMediaIncluded {
  final SocialMediaList socialMedia;

  SocialMediaIncluded({
    required this.socialMedia,
  });

  factory SocialMediaIncluded.fromJson(Map<String, dynamic> data) => _$SocialMediaIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaIncludedToJson(this);
}


