/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_included.dart';

part 'user_business_offers_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessOffersModel {
  ///Contains business data 
  @JsonKey(name: "data")
  final BusinessData data;

  ///Contains all offers items 
  @JsonKey(name: "included")
  final UserBusinessOffersIncluded? included;

  UserBusinessOffersModel({
    required this.data,
    required this.included,
  });

  factory UserBusinessOffersModel.fromJson(Map<String, dynamic> data) => _$UserBusinessOffersModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessOffersModelToJson(this);
}


