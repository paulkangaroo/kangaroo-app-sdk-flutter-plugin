/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

part 'public_offer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicOfferModel {
  final OfferModel data;

  PublicOfferModel({
    required this.data,
  });

  factory PublicOfferModel.fromJson(Map<String, dynamic> data) => _$PublicOfferModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicOfferModelToJson(this);
}


