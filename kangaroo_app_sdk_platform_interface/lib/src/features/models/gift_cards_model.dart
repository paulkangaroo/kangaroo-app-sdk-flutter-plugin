/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/gift_card_model.dart';

part 'gift_cards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardsModel {
  ///A list of all gift cards available to this user 
  @JsonKey(name: "data")
  final List<GiftCardModel> data;

  GiftCardsModel({
    required this.data,
  });

  factory GiftCardsModel.fromJson(Map<String, dynamic> data) => _$GiftCardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardsModelToJson(this);
}


