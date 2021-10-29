/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

part 'claimed_offer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ClaimedOfferModel {
  final OfferModel data;

  ClaimedOfferModel({
    required this.data,
  });

  factory ClaimedOfferModel.fromJson(Map<String, dynamic> data) => _$ClaimedOfferModelFromJson(data);

  Map<String, dynamic> toJson() => _$ClaimedOfferModelToJson(this);
}


