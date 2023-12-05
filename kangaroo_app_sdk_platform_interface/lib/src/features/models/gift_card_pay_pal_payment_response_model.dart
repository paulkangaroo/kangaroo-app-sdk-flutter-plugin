/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment_response_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_pay_pal_payment_response_data.dart';

part 'gift_card_pay_pal_payment_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardPayPalPaymentResponseModel {
  @JsonKey(name: "data")
  final GiftCardPayPalPaymentResponseData? data;

  GiftCardPayPalPaymentResponseModel({
    required this.data,
  });

  factory GiftCardPayPalPaymentResponseModel.fromJson(Map<String, dynamic> data) => _$GiftCardPayPalPaymentResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardPayPalPaymentResponseModelToJson(this);
}


