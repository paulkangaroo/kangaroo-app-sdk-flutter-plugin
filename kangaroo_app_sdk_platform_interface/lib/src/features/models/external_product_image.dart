/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/external_product_image_size.dart';

part 'external_product_image.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ExternalProductImage {
  @JsonKey(name: "altText")
  final String? altText;

  @JsonKey(name: "original")
  final ExternalProductImageSize? original;

  @JsonKey(name: "large")
  final ExternalProductImageSize? large;

  @JsonKey(name: "medium")
  final ExternalProductImageSize? medium;

  @JsonKey(name: "small")
  final ExternalProductImageSize? small;

  @JsonKey(name: "thumbnail")
  final ExternalProductImageSize? thumbnail;

  ExternalProductImage({
    required this.altText,
    required this.original,
    required this.large,
    required this.medium,
    required this.small,
    required this.thumbnail,
  });

  factory ExternalProductImage.fromJson(Map<String, dynamic> data) => _$ExternalProductImageFromJson(data);

  Map<String, dynamic> toJson() => _$ExternalProductImageToJson(this);
}


