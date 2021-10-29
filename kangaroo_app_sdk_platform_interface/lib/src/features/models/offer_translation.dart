/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/language.dart';

part 'offer_translation.g.dart';

/// A language translation of this offer.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
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

  ///The language for which this translation applies. 
  final Language? language;

  OfferTranslation({
    required this.id,
    required this.languageId,
    required this.offerTitle,
    required this.offerDescription,
    required this.offerTermsConditions,
    required this.offerLink,
    required this.language,
  });

  factory OfferTranslation.fromJson(Map<String, dynamic> data) => _$OfferTranslationFromJson(data);

  Map<String, dynamic> toJson() => _$OfferTranslationToJson(this);
}


