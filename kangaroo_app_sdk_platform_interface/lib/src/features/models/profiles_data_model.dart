/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/business_data.dart';

part 'profiles_data_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ProfilesDataModel {
  ///Unique user ID. 
  @JsonKey(name: "id")
  final String? id;

  ///Email address identifying this user. 
  @JsonKey(name: "email")
  final String? email;

  ///Phone number associated with this user. 
  @JsonKey(name: "phone")
  final String? phone;

  ///First name associated with this user. 
  @JsonKey(name: "first_name")
  final String? firstName;

  ///Last name associated with this user. 
  @JsonKey(name: "last_name")
  final String? lastName;

  ///Unique QR code identifying this user. 
  @JsonKey(name: "qrcode")
  final String? qrcode;

  ///Date the account for this user was created. 
  @JsonKey(name: "created_at")
  final String? createdAt;

  ///Denotes whether this is the master account or not 
  @JsonKey(name: "master_account")
  final bool? masterAccount;

  @JsonKey(name: "business")
  final BusinessData? business;

  ProfilesDataModel({
    required this.id,
    required this.email,
    required this.phone,
    required this.firstName,
    required this.lastName,
    required this.qrcode,
    required this.createdAt,
    required this.masterAccount,
    required this.business,
  });

  factory ProfilesDataModel.fromJson(Map<String, dynamic> data) => _$ProfilesDataModelFromJson(data);

  Map<String, dynamic> toJson() => _$ProfilesDataModelToJson(this);
}


