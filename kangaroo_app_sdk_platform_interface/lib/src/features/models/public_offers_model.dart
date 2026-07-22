/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offers.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offers.dart';

part 'public_offers_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicOffersModel {
  @JsonKey(name: "data")
  final Offers? data;

  PublicOffersModel({
    required this.data,
  });

  factory PublicOffersModel.fromJson(Map<String, dynamic> data) => _$PublicOffersModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicOffersModelToJson(this);
}


