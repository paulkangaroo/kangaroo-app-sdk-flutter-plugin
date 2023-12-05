/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'images.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Images {
  @JsonKey(name: "path")
  final String? path;

  @JsonKey(name: "large")
  final String? large;

  @JsonKey(name: "medium")
  final String? medium;

  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  @JsonKey(name: "default")
  final bool? isDefault;

  Images({
    required this.path,
    required this.large,
    required this.medium,
    required this.thumbnail,
    required this.isDefault,
  });

  factory Images.fromJson(Map<String, dynamic> data) => _$ImagesFromJson(data);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}


