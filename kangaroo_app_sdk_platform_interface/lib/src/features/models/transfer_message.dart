/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message_gift_card_queue.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message_actions.dart';


export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message_gift_card_queue.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_message_actions.dart';


part 'transfer_message.g.dart';

/// Transfer Message. These are sent to the user by other users. They can be points or e-wallet transfers or gift cards (which is deposited into the users' e-wallet) 
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferMessage {
  ///The unique ID of this transfer. 
  @JsonKey(name: "id")
  final int? id;

  ///The type ID of this transfer. 
  @JsonKey(name: "type_id")
  final int? typeId;

  ///A string representation of this transfer type. 
  @JsonKey(name: "type")
  final String? type;

  ///The description of this transfer. 
  @JsonKey(name: "description")
  final String? description;

  ///The amount of points sent in this transfer. 
  @JsonKey(name: "points")
  final int? points;

  ///The amount in $ sent in this transfer. 
  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "hidden")
  final bool? hidden;

  ///The orignal send date of this transfer. 
  @JsonKey(name: "created_at")
  final String? createdAt;

  ///The gift card in this transfer if applicable. Gift cards are an offer sub-type in Kangaroo.  
  @JsonKey(name: "offer")
  final OfferModel? offer;

  @JsonKey(name: "gift_card_queue")
  final TransferMessageGiftCardQueue? giftCardQueue;

  @JsonKey(name: "actions")
  final List<TransferMessageActions>? actions;

  ///If this transfer message is archived or not. 
  @JsonKey(name: "archived")
  final bool? archived;

  TransferMessage({
    required this.id,
    required this.typeId,
    required this.type,
    required this.description,
    required this.points,
    required this.amount,
    required this.hidden,
    required this.createdAt,
    required this.offer,
    required this.giftCardQueue,
    required this.actions,
    required this.archived,
  });

  factory TransferMessage.fromJson(Map<String, dynamic> data) => _$TransferMessageFromJson(data);

  Map<String, dynamic> toJson() => _$TransferMessageToJson(this);
}


