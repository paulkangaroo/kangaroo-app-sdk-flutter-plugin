/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'image_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ImageModel {
  @JsonKey(name: "large")
  final String? large;

  @JsonKey(name: "medium")
  final String? medium;

  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @JsonKey(name: "default")
  final bool? isDefault;

  @JsonKey(name: "path")
  final String? path;

  ImageModel({
    required this.large,
    required this.medium,
    required this.thumbnail,
    required this.isDefault,
    required this.path,
  });

  factory ImageModel.fromJson(Map<String, dynamic> data) => _$ImageModelFromJson(data);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}


