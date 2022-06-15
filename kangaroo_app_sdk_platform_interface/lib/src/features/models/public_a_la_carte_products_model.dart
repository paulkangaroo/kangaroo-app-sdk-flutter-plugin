/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_list.dart';

part 'public_a_la_carte_products_model.g.dart';

/// A list of a la carte products available to all users.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicALaCarteProductsModel {
  ///A list of a la carte products available to all users. 
  final AlaCarteList? data;

  PublicALaCarteProductsModel({
    required this.data,
  });

  factory PublicALaCarteProductsModel.fromJson(Map<String, dynamic> data) => _$PublicALaCarteProductsModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicALaCarteProductsModelToJson(this);
}


