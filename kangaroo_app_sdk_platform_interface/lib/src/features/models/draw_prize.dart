/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/reward_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/languages.dart';

part 'draw_prize.g.dart';

/// A draw prize.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DrawPrize {
  ///Unique draw prize id. 
  final int? id;

  ///The draw prize title. 
  final String? title;

  ///The draw prize description. 
  final String? description;

  ///Unique draw id. 
  final int? drawId;

  final OfferModel? offer;

  final RewardModel? catalogItem;

  ///If this draw prize is enabled or not. 
  final bool? enabled;

  ///If this draw prize is expired or not. 
  final bool? isExpired;

  final List<Languages>? languages;

  DrawPrize({
    required this.id,
    required this.title,
    required this.description,
    required this.drawId,
    required this.offer,
    required this.catalogItem,
    required this.enabled,
    required this.isExpired,
    required this.languages,
  });

  factory DrawPrize.fromJson(Map<String, dynamic> data) => _$DrawPrizeFromJson(data);

  Map<String, dynamic> toJson() => _$DrawPrizeToJson(this);
}


