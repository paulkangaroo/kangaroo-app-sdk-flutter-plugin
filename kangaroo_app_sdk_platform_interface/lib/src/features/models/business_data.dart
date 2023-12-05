/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_category.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_category.dart';

part 'business_data.g.dart';

/// Business profile data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class BusinessData {
  ///Unique business ID. 
  @JsonKey(name: "id")
  final String? id;

  ///The name of this business 
  @JsonKey(name: "name")
  final String? name;

  ///The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  
  @JsonKey(name: "loyalty_type")
  final String? loyaltyType;

  ///Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  
  @JsonKey(name: "conglomerate")
  final String? conglomerate;

  ///Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  
  @JsonKey(name: "white_label")
  final String? whiteLabel;

  ///General about text for the business 
  @JsonKey(name: "about")
  final String? about;

  @JsonKey(name: "logo")
  final Image? logo;

  @JsonKey(name: "logo_transparent_background")
  final Image? logoTransparentBackground;

  @JsonKey(name: "cover_photo")
  final Image? coverPhoto;

  @JsonKey(name: "category")
  final BusinessCategory? category;

  BusinessData({
    required this.id,
    required this.name,
    required this.loyaltyType,
    required this.conglomerate,
    required this.whiteLabel,
    required this.about,
    required this.logo,
    required this.logoTransparentBackground,
    required this.coverPhoto,
    required this.category,
  });

  factory BusinessData.fromJson(Map<String, dynamic> data) => _$BusinessDataFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessDataToJson(this);
}


