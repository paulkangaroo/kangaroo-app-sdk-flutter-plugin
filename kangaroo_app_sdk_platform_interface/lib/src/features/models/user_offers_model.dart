/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/offer_model.dart';

part 'user_offers_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserOffersModel {
  ///A list of all offers available to this user 
  final List<OfferModel> data;

  UserOffersModel({
    required this.data,
  });

  factory UserOffersModel.fromJson(Map<String, dynamic> data) => _$UserOffersModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserOffersModelToJson(this);
}


