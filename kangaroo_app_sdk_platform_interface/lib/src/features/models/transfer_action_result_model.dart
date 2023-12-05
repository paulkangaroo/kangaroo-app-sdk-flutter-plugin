/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message.dart';

part 'transfer_action_result_model.g.dart';

/// Contains the result of a transfer action.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferActionResultModel {
  @JsonKey(name: "data")
  final TransferMessage? data;

  TransferActionResultModel({
    required this.data,
  });

  factory TransferActionResultModel.fromJson(Map<String, dynamic> data) => _$TransferActionResultModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferActionResultModelToJson(this);
}


