/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'offer_action.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class OfferAction {
  @JsonKey(name: "type")
  final String? type;

  OfferAction({
    required this.type,
  });

  factory OfferAction.fromJson(Map<String, dynamic> data) => _$OfferActionFromJson(data);

  Map<String, dynamic> toJson() => _$OfferActionToJson(this);
}


