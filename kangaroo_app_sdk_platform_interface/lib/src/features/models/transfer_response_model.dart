/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_data_model.dart';

part 'transfer_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferResponseModel {
  ///Contains all user profile data 
  @JsonKey(name: "data")
  final TransferDataModel? data;

  TransferResponseModel({
    required this.data,
  });

  factory TransferResponseModel.fromJson(Map<String, dynamic> data) => _$TransferResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferResponseModelToJson(this);
}


