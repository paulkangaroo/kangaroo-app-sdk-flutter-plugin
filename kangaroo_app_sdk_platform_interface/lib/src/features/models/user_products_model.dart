/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_profile_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_products_included.dart';

part 'user_products_model.g.dart';

/// User Product model class containing user product list
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserProductsModel {
  ///Contains all user data 
  final UserProfileData data;

  ///Contains all user products data  
  final UserProductsIncluded included;

  UserProductsModel({
    required this.data,
required this.included,
  });

  factory UserProductsModel.fromJson(Map<String, dynamic> data) => _$UserProductsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserProductsModelToJson(this);
}


