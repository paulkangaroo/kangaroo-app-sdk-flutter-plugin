/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Image {
  final String? large;

  final String? medium;

  final String? thumbnail;

  @JsonKey(name: "default")
  final bool? isDefault;

  Image({
    required this.large,
    required this.medium,
    required this.thumbnail,
    required this.isDefault,
  });

  factory Image.fromJson(Map<String, dynamic> data) => _$ImageFromJson(data);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}


