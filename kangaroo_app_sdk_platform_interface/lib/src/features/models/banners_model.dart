/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/banner.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/banner.dart';

part 'banners_model.g.dart';

/// Business banners. Used to display promotional material.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BannersModel {
  @JsonKey(name: "data")
  final List<Banner>? data;

  BannersModel({
    required this.data,
  });

  factory BannersModel.fromJson(Map<String, dynamic> data) => _$BannersModelFromJson(data);

  Map<String, dynamic> toJson() => _$BannersModelToJson(this);
}


