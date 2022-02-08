/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_from.dart';

import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_to.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_from.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transfer_to.dart';

part 'transfer_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class TransferModel {
  ///The transfer intent for this transfer. This can be transfer_amount or transfer_points  
  final String intent;

  final String businessId;

  ///The two character language code of the language that this transfer should be sent in.  
  final String language;

  final TransferFrom from;

  final TransferTo to;

  final int? points;

  final double? amount;

  TransferModel({
    required this.intent,
required this.businessId,
required this.language,
required this.from,
required this.to,
    required this.points,
    required this.amount,
  });

  factory TransferModel.fromJson(Map<String, dynamic> data) => _$TransferModelFromJson(data);

  Map<String, dynamic> toJson() => _$TransferModelToJson(this);
}


