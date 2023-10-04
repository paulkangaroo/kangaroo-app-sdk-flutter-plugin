/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/draw.dart';

part 'draws_model.g.dart';

/// Business draws. Used to display draw contests.
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class DrawsModel {
  final List<Draw>? data;

  DrawsModel({
    required this.data,
  });

  factory DrawsModel.fromJson(Map<String, dynamic> data) => _$DrawsModelFromJson(data);

  Map<String, dynamic> toJson() => _$DrawsModelToJson(this);
}


