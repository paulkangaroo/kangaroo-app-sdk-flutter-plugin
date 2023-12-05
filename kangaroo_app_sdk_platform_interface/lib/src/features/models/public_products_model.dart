/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/products_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/products_list.dart';

part 'public_products_model.g.dart';

/// A list of products available to all users.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicProductsModel {
  ///A list of products available to all users. 
  @JsonKey(name: "data")
  final ProductsList? data;

  PublicProductsModel({
    required this.data,
  });

  factory PublicProductsModel.fromJson(Map<String, dynamic> data) => _$PublicProductsModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicProductsModelToJson(this);
}


