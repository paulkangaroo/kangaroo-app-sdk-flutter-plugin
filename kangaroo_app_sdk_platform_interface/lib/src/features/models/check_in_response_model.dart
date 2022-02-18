/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_data_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/check_in_data_model.dart';

part 'check_in_response_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class CheckInResponseModel {
  ///Contains all user profile data 
  final CheckInDataModel? data;

  CheckInResponseModel({
    required this.data,
  });

  factory CheckInResponseModel.fromJson(Map<String, dynamic> data) => _$CheckInResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$CheckInResponseModelToJson(this);
}


