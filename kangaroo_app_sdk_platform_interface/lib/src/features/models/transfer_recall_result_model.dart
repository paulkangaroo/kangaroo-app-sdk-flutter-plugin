/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message.dart';

part 'transfer_recall_result_model.g.dart';

/// Contains the result of a recalled transfer.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferRecallResultModel {
  final TransferMessage data;

  TransferRecallResultModel({
    required this.data,
  });

  factory TransferRecallResultModel.fromJson(Map<String, dynamic> data) => _$TransferRecallResultModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferRecallResultModelToJson(this);
}


