/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'offer_translation.g.dart';

/// A language translation of this offer.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OfferTranslation {
  final int id;

  ///The ID of this specific translation 
  final int? languageId;

  ///The translated offer title. 
  final String? offerTitle;

  ///The translated offer description. 
  final String? offerDescription;

  ///The translated offer terms and conditions. 
  final String? offerTermsConditions;

  ///The language appropriate link of this offer. 
  final String? offerLink;

  ///The translated coupon title. 
  final String? couponTitle;

  ///The translated coupon description. 
  final String? couponDescription;

  ///The translated coupon terms and conditions. 
  final String? couponTermsConditions;

  ///The language appropriate link of this coupon. 
  final String? couponLink;

  ///where is this coupon available at. 
  final String? couponAvailableAt;

  ///The language for which this translation applies. 
  final Language? language;

  OfferTranslation({
    required this.id,
    required this.languageId,
    required this.offerTitle,
    required this.offerDescription,
    required this.offerTermsConditions,
    required this.offerLink,
    required this.couponTitle,
    required this.couponDescription,
    required this.couponTermsConditions,
    required this.couponLink,
    required this.couponAvailableAt,
    required this.language,
  });

  factory OfferTranslation.fromJson(Map<String, dynamic> data) => _$OfferTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$OfferTranslationToJson(this);
}


