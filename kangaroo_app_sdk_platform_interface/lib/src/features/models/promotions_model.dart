/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/promotions_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/promotions_data_model.dart';

part 'promotions_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PromotionsModel {
  @JsonKey(name: "data")
  final PromotionsDataModel data;

  PromotionsModel({
    required this.data,
  });

  factory PromotionsModel.fromJson(Map<String, dynamic> data) => _$PromotionsModelFromJson(data);

  Map<String, dynamic> toJson() => _$PromotionsModelToJson(this);
}


