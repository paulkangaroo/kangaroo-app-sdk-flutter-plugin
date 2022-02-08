/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/pay_pal_payment.dart';

part 'pay_pal_payment_model.g.dart';

/// A paypal payment response
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PayPalPaymentModel {
  ///A paypal payment response data 
  final PayPalPayment? data;

  PayPalPaymentModel({
    required this.data,
  });

  factory PayPalPaymentModel.fromJson(Map<String, dynamic> data) => _$PayPalPaymentModelFromJson(data);

  Map<String, dynamic> toJson() => _$PayPalPaymentModelToJson(this);
}


