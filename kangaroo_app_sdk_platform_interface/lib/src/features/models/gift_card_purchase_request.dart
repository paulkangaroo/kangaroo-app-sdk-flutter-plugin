/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment.dart';

part 'gift_card_purchase_request.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardPurchaseRequest {
  final String intent;

  final String provider;

  final int giftcardId;

  final GiftCardPayPalPayment paypalPayment;

  GiftCardPurchaseRequest({
    required this.intent,
required this.provider,
required this.giftcardId,
required this.paypalPayment,
  });

  factory GiftCardPurchaseRequest.fromJson(Map<String, dynamic> data) => _$GiftCardPurchaseRequestFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPurchaseRequestToJson(this);
}


