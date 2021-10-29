/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/frequent_buyer_users_list.dart';

part 'frequent_buyer_item_model.g.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class FrequentBuyerItemModel {
  final int? id;

  final String? title;

  final int? buyUnits;

  final int? getUnits;

  final int? resetInterval;

  final String? createdAt;

  final FrequentBuyerUsersList? frequentBuyerUsers;

  FrequentBuyerItemModel({
    required this.id,
    required this.title,
    required this.buyUnits,
    required this.getUnits,
    required this.resetInterval,
    required this.createdAt,
    required this.frequentBuyerUsers,
  });

  factory FrequentBuyerItemModel.fromJson(Map<String, dynamic> data) => _$FrequentBuyerItemModelFromJson(data);

  Map<String, dynamic> toJson() => _$FrequentBuyerItemModelToJson(this);
}


