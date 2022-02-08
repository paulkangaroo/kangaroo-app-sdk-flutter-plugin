/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/products_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/products_list.dart';

part 'user_products_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserProductsIncluded {
  final ProductsList? products;

  UserProductsIncluded({
    required this.products,
  });

  factory UserProductsIncluded.fromJson(Map<String, dynamic> data) => _$UserProductsIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$UserProductsIncludedToJson(this);
}


