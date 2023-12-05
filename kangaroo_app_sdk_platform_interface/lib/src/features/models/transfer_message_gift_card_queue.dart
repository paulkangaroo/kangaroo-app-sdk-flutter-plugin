/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'transfer_message_gift_card_queue.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferMessageGiftCardQueue {
  ///The unique ID of this gift_card_queue 
  @JsonKey(name: "id")
  final int? id;

  ///Whether this item is enabled. Usually true. 
  @JsonKey(name: "enabled")
  final bool? enabled;

  ///The name of the sender of this transfer. 
  @JsonKey(name: "sender_name")
  final String? senderName;

  ///The name of the recipient of this transfer. 
  @JsonKey(name: "recipient_name")
  final String? recipientName;

  ///The phone number or email address that this transfer was sent to.  
  @JsonKey(name: "email_phone")
  final String? emailPhone;

  ///The amount of points sent in this transfer. 
  @JsonKey(name: "points")
  final int? points;

  ///The amount in $ sent in this transfer. 
  @JsonKey(name: "amount")
  final double? amount;

  ///The orignal creation date of this transfer. 
  @JsonKey(name: "created_at")
  final String? createdAt;

  ///The original scheduled delivery date of this transfer. 
  @JsonKey(name: "scheduled_at")
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


