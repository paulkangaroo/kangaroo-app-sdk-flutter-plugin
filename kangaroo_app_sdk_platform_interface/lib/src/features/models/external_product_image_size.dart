/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'external_product_image_size.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductImageSize {
  @JsonKey(name: "height")
  final int? height;

  @JsonKey(name: "url")
  final String? url;

  @JsonKey(name: "width")
  final int? width;

  ExternalProductImageSize({
    required this.height,
    required this.url,
    required this.width,
  });

  factory ExternalProductImageSize.fromJson(Map<String, dynamic> data) => _$ExternalProductImageSizeFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductImageSizeToJson(this);
}


