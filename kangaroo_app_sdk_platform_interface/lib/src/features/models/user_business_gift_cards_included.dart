/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_list.dart';

part 'user_business_gift_cards_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessGiftCardsIncluded {
  @JsonKey(name: "giftcards")
  final UserBusinessGiftCardsList? giftcards;

  UserBusinessGiftCardsIncluded({
    required this.giftcards,
  });

  factory UserBusinessGiftCardsIncluded.fromJson(Map<String, dynamic> data) => _$UserBusinessGiftCardsIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessGiftCardsIncludedToJson(this);
}


