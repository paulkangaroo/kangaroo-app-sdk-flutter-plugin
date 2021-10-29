/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_category.dart';

part 'business_data.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class BusinessData {
  ///Unique business ID. 
  final String id;

  ///The name of this business 
  final String? name;

  ///The manner in which this business rewards its customers. This can be by purchase amount of by visit to the store  
  final String? loyaltyType;

  ///Whether this is a conglomerate business. Conglomerate businesses are umbrellas for multiple business&#39; in Kangaroo  
  final String? conglomerate;

  ///Whether this is a white label business. White label business&#39; don&#39;t appear in the Kangaroo Mobile Customer app, as they usually have their own app.  
  final String? whiteLabel;

  ///General about text for the business 
  final String? about;

  final Image? logo;

  final Image? logoTransparentBackground;

  final Image? coverPhoto;

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


