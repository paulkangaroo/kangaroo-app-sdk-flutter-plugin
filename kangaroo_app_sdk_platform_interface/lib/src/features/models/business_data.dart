/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_category.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/address_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_category.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_level.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/rewards.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/address_data_model.dart';

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
  final ImageModel? logo;

  @JsonKey(name: "logo_transparent_background")
  final ImageModel? logoTransparentBackground;

  @JsonKey(name: "cover_photo")
  final ImageModel? coverPhoto;

  @JsonKey(name: "category")
  final BusinessCategory? category;

  ///The default branch for this business 
  @JsonKey(name: "default_branch")
  final Branch? defaultBranch;

  ///The users point and gift card balance 
  @JsonKey(name: "balance")
  final UserBalance? balance;

  ///The users tier status 
  @JsonKey(name: "tier_level")
  final TierLevel? tierLevel;

  ///Contains a list of all rewards available to this user 
  @JsonKey(name: "catalog_items")
  final Rewards? catalogItems;

  @JsonKey(name: "address")
  final AddressDataModel? address;

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
    required this.defaultBranch,
    required this.balance,
    required this.tierLevel,
    required this.catalogItems,
    required this.address,
  });

  factory BusinessData.fromJson(Map<String, dynamic> data) => _$BusinessDataFromJson(data);

  Map<String, dynamic> toJson() => _$BusinessDataToJson(this);
}


