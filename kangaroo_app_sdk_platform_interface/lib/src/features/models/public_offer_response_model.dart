/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/public_offer_model.dart';

part 'public_offer_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class PublicOfferResponseModel {
  @JsonKey(name: "data")
  final PublicOfferModel data;

  PublicOfferResponseModel({
    required this.data,
  });

  factory PublicOfferResponseModel.fromJson(Map<String, dynamic> data) => _$PublicOfferResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$PublicOfferResponseModelToJson(this);
}


