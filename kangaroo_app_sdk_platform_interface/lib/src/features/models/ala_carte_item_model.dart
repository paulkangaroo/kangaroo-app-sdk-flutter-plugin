/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/product.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/product.dart';

part 'ala_carte_item_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class AlaCarteItemModel {
  final int? id;

  final int? points;

  final Product? product;

  AlaCarteItemModel({
    required this.id,
    required this.points,
    required this.product,
  });

  factory AlaCarteItemModel.fromJson(Map<String, dynamic> data) => _$AlaCarteItemModelFromJson(data);

  Map<String, dynamic> toJson() => _$AlaCarteItemModelToJson(this);
}


