/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_string.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/application_string.dart';

part 'application_strings_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class ApplicationStringsModel {
  ///A list of application strings. 
  final List<ApplicationString> data;

  ApplicationStringsModel({
    required this.data,
  });

  factory ApplicationStringsModel.fromJson(Map<String, dynamic> data) => _$ApplicationStringsModelFromJson(data);

  Map<String, dynamic> toJson() => _$ApplicationStringsModelToJson(this);
}


