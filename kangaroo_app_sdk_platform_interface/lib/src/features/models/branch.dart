/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_phone.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/image.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/branch_address.dart';

part 'branch.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Branch {
  ///Unique ID for this branch 
  final String? id;

  ///The name of this branch 
  final String? name;

  ///The website for this branch 
  final String? webSite;

  final BranchPhone? phone;

  final Image? logo;

  final Image? coverPhoto;

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


