/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'social_media_item_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class SocialMediaItemModel {
  final String? icon;

  final String? url;

  SocialMediaItemModel({
    required this.icon,
    required this.url,
  });

  factory SocialMediaItemModel.fromJson(Map<String, dynamic> data) => _$SocialMediaItemModelFromJson(data);

  Map<String, dynamic> toJson() => _$SocialMediaItemModelToJson(this);
}


