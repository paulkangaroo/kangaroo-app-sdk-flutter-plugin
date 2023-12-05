/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/user_business_banners_list.dart';

part 'user_business_banners_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class UserBusinessBannersIncluded {
  @JsonKey(name: "banners")
  final UserBusinessBannersList? banners;

  UserBusinessBannersIncluded({
    required this.banners,
  });

  factory UserBusinessBannersIncluded.fromJson(Map<String, dynamic> data) => _$UserBusinessBannersIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$UserBusinessBannersIncludedToJson(this);
}


