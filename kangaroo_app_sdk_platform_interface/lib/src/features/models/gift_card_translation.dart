/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'gift_card_translation.g.dart';

/// A language translation of this gift card.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardTranslation {
  @JsonKey(name: "id")
  final int id;

  ///The ID of this specific translation 
  @JsonKey(name: "language_id")
  final int? languageId;

  ///The translated gift card title. 
  @JsonKey(name: "offer_title")
  final String? offerTitle;

  ///The translated gift card description. 
  @JsonKey(name: "offer_description")
  final String? offerDescription;

  ///The translated gift card terms and conditions. 
  @JsonKey(name: "offer_terms_conditions")
  final String? offerTermsConditions;

  ///The language appropriate link of this gift card. 
  @JsonKey(name: "offer_link")
  final String? offerLink;

  ///The language for which this translation applies. 
  @JsonKey(name: "language")
  final Language? language;

  GiftCardTranslation({
    required this.id,
    required this.languageId,
    required this.offerTitle,
    required this.offerDescription,
    required this.offerTermsConditions,
    required this.offerLink,
    required this.language,
  });

  factory GiftCardTranslation.fromJson(Map<String, dynamic> data) => _$GiftCardTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardTranslationToJson(this);
}


