/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_ala_carte_included.dart';

part 'ala_carte_products_model.g.dart';

/// User A la carte products model class containing user A la carte list
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class AlaCarteProductsModel {
  ///Contains all user data 
  final UserProfileData data;

  ///Contains all A la carte items 
  final UserAlaCarteIncluded included;

  AlaCarteProductsModel({
    required this.data,
required this.included,
  });

  factory AlaCarteProductsModel.fromJson(Map<String, dynamic> data) => _$AlaCarteProductsModelFromJson(data);

  Map<String, dynamic> toJson() => _$AlaCarteProductsModelToJson(this);
}


