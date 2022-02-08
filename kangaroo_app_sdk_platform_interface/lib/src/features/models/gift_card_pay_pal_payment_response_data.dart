/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_purchase_response_gift_card_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_purchase_response_gift_card_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_balance.dart';

part 'gift_card_pay_pal_payment_response_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class GiftCardPayPalPaymentResponseData {
  final String? id;

  final String? provider;

  final GiftCardPurchaseResponseGiftCardData? giftcard;

  final UserBalance? balance;

  GiftCardPayPalPaymentResponseData({
    required this.id,
    required this.provider,
    required this.giftcard,
    required this.balance,
  });

  factory GiftCardPayPalPaymentResponseData.fromJson(Map<String, dynamic> data) => _$GiftCardPayPalPaymentResponseDataFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPayPalPaymentResponseDataToJson(this);
}


