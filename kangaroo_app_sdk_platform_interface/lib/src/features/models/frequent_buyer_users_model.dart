/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';


part 'frequent_buyer_users_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class FrequentBuyerUsersModel {
  final int? id;

  final int? status;

  final int? purchasesCount;

  FrequentBuyerUsersModel({
    required this.id,
    required this.status,
    required this.purchasesCount,
  });

  factory FrequentBuyerUsersModel.fromJson(Map<String, dynamic> data) => _$FrequentBuyerUsersModelFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerUsersModelToJson(this);
}


