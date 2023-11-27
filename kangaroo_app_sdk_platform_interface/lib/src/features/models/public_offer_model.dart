/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_translation.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_action.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_action.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch.dart';

part 'public_offer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicOfferModel {
  ///A unique ID identifying this reward 
  final int id;

  ///The amount of points required for this offer to be applied. Only used for Convertible Coupons  
  final int? points;

  ///The publication date of this offer. 
  final String? publishAt;

  ///The expiration date of this offer. 
  final String? expiresAt;

  ///Whether this offer is currently published or not. 
  final bool? isPublished;

  ///Whether this is a convertible coupon. Convertible coupons are automatically added to the customers account when the point threshold is met. The points are automatically deducted from the users&#39; account.  
  final bool? couponConvertible;

  ///The real value  (in $) of this offer 
  final double? realValue;

  ///The discount value (in $) of this offer 
  final double? discountValue;

  ///The multiplication factor of this offer. This only applies to Point Multiplier offers.  
  final double? multipFactor;

  ///The minimum purchase amount for this offer to be applied 
  final double? minPurchase;

  ///The maximum purchase amount for this offer to be applied. 
  final double? maxPurchase;

  ///Whether this offer must be claimed on a mobile app before being used in store.  
  final bool? appsOnly;

  final bool? isCouponRedeemed;

  final int? offerFrequencyId;

  final List<String>? freqDetails;

  final String? peakFrom;

  final String? peakTo;

  ///The offer type. This can be a free product, dollar based discount, percentage based discount, point multiplier, bonus points, and free shipping.  
  final String? type;

  ///The offer title. 
  final String? title;

  ///The offer description. 
  final String? description;

  ///The unique slug for this offer 
  final String? slug;

  ///The images attached to this offer. There are 3 available sizes: thumbnail, medium, and large.  
  final List<Image>? images;

  ///Whether this offer ever expires or not. If false, this offer is available indefinitely (provided any other requirements are met)  
  final bool? neverExpiresFlag;

  ///The terms and conditions attached to this offer. 
  final String? termsConditions;

  ///The external link attached to this offer. 
  final String? link;

  ///A list of translations of this offer into different languages. 
  final List<OfferTranslation>? offerLanguages;

  ///A list of possible actions to perform on this offer. 
  final List<OfferAction>? actions;

  final Branch? branch;

  PublicOfferModel({
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
    required this.branch,
  });

  factory PublicOfferModel.fromJson(Map<String, dynamic> data) => _$PublicOfferModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicOfferModelToJson(this);
}


