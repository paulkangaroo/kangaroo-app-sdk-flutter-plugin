/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/ala_carte_list.dart';

part 'user_ala_carte_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserAlaCarteIncluded {
  final AlaCarteList? productRewards;

  UserAlaCarteIncluded({
    required this.productRewards,
  });

  factory UserAlaCarteIncluded.fromJson(Map<String, dynamic> data) => _$UserAlaCarteIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$UserAlaCarteIncludedToJson(this);
}


