/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_included.dart';

part 'user_business_banners_model.g.dart';

/// Business banners. Used to display promotional material.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessBannersModel {
  ///Contains business data 
  @JsonKey(name: "data")
  final BusinessData? data;

  ///Contains all A la carte items 
  @JsonKey(name: "included")
  final UserBusinessBannersIncluded? included;

  UserBusinessBannersModel({
    required this.data,
    required this.included,
  });

  factory UserBusinessBannersModel.fromJson(Map<String, dynamic> data) => _$UserBusinessBannersModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessBannersModelToJson(this);
}


