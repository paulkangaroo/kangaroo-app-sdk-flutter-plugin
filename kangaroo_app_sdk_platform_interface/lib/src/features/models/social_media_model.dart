/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/social_media_included.dart';

part 'social_media_model.g.dart';

/// Social Media Model containing list of all social media links
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class SocialMediaModel {
  ///Contains all Social media links 
  final SocialMediaIncluded? included;

  SocialMediaModel({
    required this.included,
  });

  factory SocialMediaModel.fromJson(Map<String, dynamic> data) => _$SocialMediaModelFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaModelToJson(this);
}


