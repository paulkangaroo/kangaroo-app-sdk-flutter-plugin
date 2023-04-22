/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/spin_to_win_prizes_data.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/spin_to_win_prizes_data.dart';

part 'spin_to_win_prizes_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SpinToWinPrizesModel {
  ///Contains a list of all coupons available to this user 
  final SpinToWinPrizesData? data;

  SpinToWinPrizesModel({
    required this.data,
  });

  factory SpinToWinPrizesModel.fromJson(Map<String, dynamic> data) => _$SpinToWinPrizesModelFromJson(data);

  Map<String, dynamic> toJson() => _$SpinToWinPrizesModelToJson(this);
}


