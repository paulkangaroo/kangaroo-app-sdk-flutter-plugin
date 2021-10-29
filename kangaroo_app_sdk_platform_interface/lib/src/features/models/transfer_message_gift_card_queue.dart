/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';

part 'transfer_message_gift_card_queue.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferMessageGiftCardQueue {
  ///The unique ID of this gift_card_queue 
  final int? id;

  ///Whether this item is enabled. Usually true. 
  final bool? enabled;

  ///The name of the sender of this transfer. 
  final String? senderName;

  ///The name of the recipient of this transfer. 
  final String? recipientName;

  ///The phone number or email address that this transfer was sent to.  
  final String? emailPhone;

  ///The amount of points sent in this transfer. 
  final int? points;

  ///The amount in $ sent in this transfer. 
  final double? amount;

  ///The orignal creation date of this transfer. 
  final String? createdAt;

  ///The original scheduled delivery date of this transfer. 
  final String? scheduledAt;

  TransferMessageGiftCardQueue({
    required this.id,
    required this.enabled,
    required this.senderName,
    required this.recipientName,
    required this.emailPhone,
    required this.points,
    required this.amount,
    required this.createdAt,
    required this.scheduledAt,
  });

  factory TransferMessageGiftCardQueue.fromJson(Map<String, dynamic> data) => _$TransferMessageGiftCardQueueFromJson(data);

  Map<String, dynamic> toJson() => _$TransferMessageGiftCardQueueToJson(this);
}


