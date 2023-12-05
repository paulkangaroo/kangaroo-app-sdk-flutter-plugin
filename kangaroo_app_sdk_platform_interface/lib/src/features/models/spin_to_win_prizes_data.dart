/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/prize_model.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/prize_model.dart';

part 'spin_to_win_prizes_data.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class SpinToWinPrizesData {
  ///spin to win id 
  @JsonKey(name: "spin_win_id")
  final int? spinWinId;

  ///List of prizes 
  @JsonKey(name: "spin_prizes")
  final List<PrizeModel>? spinPrizes;

  SpinToWinPrizesData({
    required this.spinWinId,
    required this.spinPrizes,
  });

  factory SpinToWinPrizesData.fromJson(Map<String, dynamic> data) => _$SpinToWinPrizesDataFromJson(data);

  Map<String, dynamic> toJson() => _$SpinToWinPrizesDataToJson(this);
}


