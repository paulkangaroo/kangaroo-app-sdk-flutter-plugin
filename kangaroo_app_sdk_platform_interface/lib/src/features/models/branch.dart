/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_phone.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_address.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_phone.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_address.dart';

part 'branch.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Branch {
  ///Unique ID for this branch 
  @JsonKey(name: "id")
  final String? id;

  ///The name of this branch 
  @JsonKey(name: "name")
  final String? name;

  ///The website for this branch 
  @JsonKey(name: "web_site")
  final String? webSite;

  @JsonKey(name: "phone")
  final BranchPhone? phone;

  @JsonKey(name: "logo")
  final Image? logo;

  @JsonKey(name: "cover_photo")
  final Image? coverPhoto;

  @JsonKey(name: "address")
  final BranchAddress? address;

  Branch({
    required this.id,
    required this.name,
    required this.webSite,
    required this.phone,
    required this.logo,
    required this.coverPhoto,
    required this.address,
  });

  factory Branch.fromJson(Map<String, dynamic> data) => _$BranchFromJson(data);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}


