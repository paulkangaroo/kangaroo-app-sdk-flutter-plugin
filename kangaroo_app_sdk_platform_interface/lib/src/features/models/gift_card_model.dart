/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_translation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_action.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_action.dart';

part 'gift_card_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardModel {
  ///A unique ID identifying this reward 
  final int id;

  final int? points;

  ///The publication date of this offer. 
  final String? publishAt;

  ///The expiration date of this offer. 
  final String? expiresAt;

  ///Whether this offer is currently published or not. 
  final bool? isPublished;

  ///Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  
  final bool? couponConvertible;

  ///The real value  (in $) of this gift card 
  final double? realValue;

  ///The discount value (in $) of this gift card 
  final double? discountValue;

  final double? multipFactor;

  final double? minPurchase;

  final double? maxPurchase;

  final bool? appsOnly;

  final int? offerFrequencyId;

  final List<String>? freqDetails;

  final String? peakFrom;

  final String? peakTo;

  ///The offer type. This is a gift card.  
  final String? type;

  ///The gift card title. 
  final String? title;

  ///The gift card description. 
  final String? description;

  ///The unique slug for this gift card 
  final String? slug;

  ///The images attached to this gift ard. There are 3 available sizes: thumbnail, medium, and large.  
  final List<Image>? images;

  ///Whether this gift card ever expires or not. If false, this gift card is available indefinitely (provided any other requirements are met)  
  final bool? neverExpiresFlag;

  ///The terms and conditions attached to this gift card. 
  final String? termsConditions;

  ///The external link attached to this gift card. 
  final String? link;

  ///A list of translations of this gift card into different languages. 
  final List<GiftCardTranslation>? offerLanguages;

  ///A list of possible actions to perform on this gift card. 
  final List<GiftCardAction>? actions;

  GiftCardModel({
    required this.id,
    required this.points,
    required this.publishAt,
    required this.expiresAt,
    required this.isPublished,
    required this.couponConvertible,
    required this.realValue,
    required this.discountValue,
    required this.multipFactor,
    required this.minPurchase,
    required this.maxPurchase,
    required this.appsOnly,
    required this.offerFrequencyId,
    required this.freqDetails,
    required this.peakFrom,
    required this.peakTo,
    required this.type,
    required this.title,
    required this.description,
    required this.slug,
    required this.images,
    required this.neverExpiresFlag,
    required this.termsConditions,
    required this.link,
    required this.offerLanguages,
    required this.actions,
  });

  factory GiftCardModel.fromJson(Map<String, dynamic> data) => _$GiftCardModelFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardModelToJson(this);
}


