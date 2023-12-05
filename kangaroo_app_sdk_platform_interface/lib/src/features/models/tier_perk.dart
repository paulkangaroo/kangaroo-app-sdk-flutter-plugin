/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_perk_translation.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/tier_perk_translation.dart';

part 'tier_perk.g.dart';

/// Represents a single tier perk for a tier level.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class TierPerk {
  ///The ID for this tier perk. 
  @JsonKey(name: "id")
  final int? id;

  ///The title of this tier perk. 
  @JsonKey(name: "title")
  final String? title;

  ///The ID for the tier level this tier perk is related to. 
  @JsonKey(name: "tier_id")
  final int? tierId;

  @JsonKey(name: "offer_id")
  final int? offerId;

  @JsonKey(name: "punch_item_id")
  final int? punchItemId;

  ///Whether this tier perk is currently enabled or disabled. 
  @JsonKey(name: "enabled")
  final bool? enabled;

  ///Whether the offer this tier perk is currently attached to is expired or not. 
  @JsonKey(name: "is_expired")
  final bool? isExpired;

  ///The perks related to this tier level. 
  @JsonKey(name: "languages")
  final List<TierPerkTranslation>? languages;

  TierPerk({
    required this.id,
    required this.title,
    required this.tierId,
    required this.offerId,
    required this.punchItemId,
    required this.enabled,
    required this.isExpired,
    required this.languages,
  });

  factory TierPerk.fromJson(Map<String, dynamic> data) => _$TierPerkFromJson(data);

  Map<String, dynamic> toJson() => _$TierPerkToJson(this);
}


