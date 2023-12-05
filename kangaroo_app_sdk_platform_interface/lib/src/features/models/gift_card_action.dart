/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'gift_card_action.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class GiftCardAction {
  @JsonKey(name: "type")
  final String? type;

  GiftCardAction({
    required this.type,
  });

  factory GiftCardAction.fromJson(Map<String, dynamic> data) => _$GiftCardActionFromJson(data);

  Map<String, dynamic> toJson() => _$GiftCardActionToJson(this);
}


