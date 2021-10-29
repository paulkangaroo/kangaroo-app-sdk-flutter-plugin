/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/redeem_response_data.dart';

part 'redeem_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RedeemResponseModel {
  final RedeemResponseData data;

  RedeemResponseModel({
    required this.data,
  });

  factory RedeemResponseModel.fromJson(Map<String, dynamic> data) => _$RedeemResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$RedeemResponseModelToJson(this);
}


