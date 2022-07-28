/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_offers_list.dart';

part 'user_business_offers_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessOffersIncluded {
  final UserBusinessOffersList? offers;

  UserBusinessOffersIncluded({
    required this.offers,
  });

  factory UserBusinessOffersIncluded.fromJson(Map<String, dynamic> data) => _$UserBusinessOffersIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessOffersIncludedToJson(this);
}


