/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message.dart';

part 'transfer_messages_model.g.dart';

/// Contains a list of transfer messages sent to this user
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferMessagesModel {
  ///List of transfer messages. 
  final List<TransferMessage>? data;

  TransferMessagesModel({
    required this.data,
  });

  factory TransferMessagesModel.fromJson(Map<String, dynamic> data) => _$TransferMessagesModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferMessagesModelToJson(this);
}


