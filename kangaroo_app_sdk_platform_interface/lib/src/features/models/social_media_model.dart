/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'social_media_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SocialMediaModel {
  final String? icon;

  final String? url;

  SocialMediaModel({
    required this.icon,
    required this.url,
  });

  factory SocialMediaModel.fromJson(Map<String, dynamic> data) => _$SocialMediaModelFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaModelToJson(this);
}


