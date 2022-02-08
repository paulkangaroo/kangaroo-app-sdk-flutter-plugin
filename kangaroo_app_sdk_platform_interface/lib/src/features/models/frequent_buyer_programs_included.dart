/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_program_list.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_program_list.dart';

part 'frequent_buyer_programs_included.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class FrequentBuyerProgramsIncluded {
  final FrequentBuyerProgramList? frequentBuyerPrograms;

  FrequentBuyerProgramsIncluded({
    required this.frequentBuyerPrograms,
  });

  factory FrequentBuyerProgramsIncluded.fromJson(Map<String, dynamic> data) => _$FrequentBuyerProgramsIncludedFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerProgramsIncludedToJson(this);
}


