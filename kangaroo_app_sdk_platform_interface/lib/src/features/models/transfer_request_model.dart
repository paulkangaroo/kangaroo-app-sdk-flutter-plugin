/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_from.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_to.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_from.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_request_to.dart';

part 'transfer_request_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TransferRequestModel {
  ///The transfer intent for this transfer. This can be transfer_amount or transfer_points  
  @JsonKey(name: "intent")
  final String intent;

  @JsonKey(name: "business_id")
  final String businessId;

  ///The two character language code of the language that this transfer should be sent in.  
  @JsonKey(name: "language")
  final String language;

  @JsonKey(name: "from")
  final TransferRequestFrom from;

  @JsonKey(name: "to")
  final TransferRequestTo to;

  @JsonKey(name: "points")
  final int? points;

  @JsonKey(name: "amount")
  final double? amount;

  @JsonKey(name: "giftcard_id")
  final int? giftcardId;

  TransferRequestModel({
    required this.intent,
required this.businessId,
required this.language,
required this.from,
required this.to,
    required this.points,
    required this.amount,
    required this.giftcardId,
  });

  factory TransferRequestModel.fromJson(Map<String, dynamic> data) => _$TransferRequestModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferRequestModelToJson(this);
}


