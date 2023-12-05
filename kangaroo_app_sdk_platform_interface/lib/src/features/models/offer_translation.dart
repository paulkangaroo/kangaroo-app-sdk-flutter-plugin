/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'offer_translation.g.dart';

/// A language translation of this offer.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OfferTranslation {
  @JsonKey(name: "id")
  final int id;

  ///The ID of this specific translation 
  @JsonKey(name: "language_id")
  final int? languageId;

  ///The translated offer title. 
  @JsonKey(name: "offer_title")
  final String? offerTitle;

  ///The translated offer description. 
  @JsonKey(name: "offer_description")
  final String? offerDescription;

  ///The translated offer terms and conditions. 
  @JsonKey(name: "offer_terms_conditions")
  final String? offerTermsConditions;

  ///The language appropriate link of this offer. 
  @JsonKey(name: "offer_link")
  final String? offerLink;

  ///The translated coupon title. 
  @JsonKey(name: "coupon_title")
  final String? couponTitle;

  ///The translated coupon description. 
  @JsonKey(name: "coupon_description")
  final String? couponDescription;

  ///The translated coupon terms and conditions. 
  @JsonKey(name: "coupon_terms_conditions")
  final String? couponTermsConditions;

  ///The language appropriate link of this coupon. 
  @JsonKey(name: "coupon_link")
  final String? couponLink;

  ///where is this coupon available at. 
  @JsonKey(name: "coupon_available_at")
  final String? couponAvailableAt;

  ///The language for which this translation applies. 
  @JsonKey(name: "language")
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


