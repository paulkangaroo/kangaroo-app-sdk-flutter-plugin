/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_translation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_action.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_action.dart';

part 'offer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OfferModel {
  ///A unique ID identifying this reward 
  @JsonKey(name: "id")
  final int id;

  ///The amount of points required for this offer to be applied. Only used for Convertible Coupons  
  @JsonKey(name: "points")
  final int? points;

  ///The publication date of this offer. 
  @JsonKey(name: "publish_at")
  final String? publishAt;

  ///The expiration date of this offer. 
  @JsonKey(name: "expires_at")
  final String? expiresAt;

  ///Whether this offer is currently published or not. 
  @JsonKey(name: "is_published")
  final bool? isPublished;

  ///Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  
  @JsonKey(name: "coupon_convertible")
  final bool? couponConvertible;

  ///The real value  (in $) of this offer 
  @JsonKey(name: "real_value")
  final double? realValue;

  ///The discount value (in $) of this offer 
  @JsonKey(name: "discount_value")
  final double? discountValue;

  ///The multiplication factor of this offer. This only applies to Point Multiplier offers.  
  @JsonKey(name: "multip_factor")
  final double? multipFactor;

  ///The minimum purchase amount for this offer to be applied 
  @JsonKey(name: "min_purchase")
  final double? minPurchase;

  ///The maximum purchase amount for this offer to be applied. 
  @JsonKey(name: "max_purchase")
  final double? maxPurchase;

  ///Whether this offer must be claimed on a mobile app before being used in store.  
  @JsonKey(name: "apps_only")
  final bool? appsOnly;

  @JsonKey(name: "is_coupon_redeemed")
  final bool? isCouponRedeemed;

  @JsonKey(name: "offer_frequency_id")
  final int? offerFrequencyId;

  @JsonKey(name: "freq_details")
  final List<String>? freqDetails;

  @JsonKey(name: "peak_from")
  final String? peakFrom;

  @JsonKey(name: "peak_to")
  final String? peakTo;

  ///The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  
  @JsonKey(name: "type")
  final String? type;

  ///The offer title. 
  @JsonKey(name: "title")
  final String? title;

  ///The offer description. 
  @JsonKey(name: "description")
  final String? description;

  ///The unique slug for this offer 
  @JsonKey(name: "slug")
  final String? slug;

  ///The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  
  @JsonKey(name: "images")
  final List<Image>? images;

  ///Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  
  @JsonKey(name: "never_expires_flag")
  final bool? neverExpiresFlag;

  ///The terms and conditions attached to this offer. 
  @JsonKey(name: "terms_conditions")
  final String? termsConditions;

  ///The external link attached to this offer. 
  @JsonKey(name: "link")
  final String? link;

  ///A list of translations of this offer into different languages. 
  @JsonKey(name: "offer_languages")
  final List<OfferTranslation>? offerLanguages;

  ///A list of possible actions to perform on this offer. 
  @JsonKey(name: "actions")
  final List<OfferAction>? actions;

  OfferModel({
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
    required this.isCouponRedeemed,
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

  factory OfferModel.fromJson(Map<String, dynamic> data) => _$OfferModelFromJson(data);

  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}


