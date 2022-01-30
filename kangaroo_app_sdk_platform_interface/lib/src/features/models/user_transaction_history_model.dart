/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transaction.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transaction.dart';

part 'user_transaction_history_model.g.dart';

/// User Profile model class containing user data
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class UserTransactionHistoryModel {
  ///Contains user transaction history. 
  final List<Transaction> data;

  UserTransactionHistoryModel({
    required this.data,
  });

  factory UserTransactionHistoryModel.fromJson(Map<String, dynamic> data) => _$UserTransactionHistoryModelFromJson(data);

  Map<String, dynamic> toJson() => _$UserTransactionHistoryModelToJson(this);
}


