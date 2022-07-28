/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_included.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_gift_cards_included.dart';

part 'user_business_gift_cards_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessGiftCardsModel {
  ///Contains business data 
  final BusinessData data;

  ///Contains all gift cards items 
  final UserBusinessGiftCardsIncluded? included;

  UserBusinessGiftCardsModel({
    required this.data,
    required this.included,
  });

  factory UserBusinessGiftCardsModel.fromJson(Map<String, dynamic> data) => _$UserBusinessGiftCardsModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessGiftCardsModelToJson(this);
}


