/// NOTE: This code belongs to Kangaroo Rewards. Unauthorized use is prohibited
/// This code was generated for the Kangaroo Mobile SDK Flutter Plugin. Do not modify these files.

import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/features/models/transaction_details.dart';

export 'package:kangaroo_app_sdk_platform_interface/src/features/models/transaction_details.dart';

part 'transaction.g.dart';

/// Transaction model containting transaction details
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, checked: true, disallowUnrecognizedKeys: true,)
class Transaction {
  ///Unique transaction ID. 
  @JsonKey(name: "id")
  final int? id;

  ///The amount in $ for this transaction. 
  @JsonKey(name: "amount")
  final double? amount;

  ///The amount in points for this transaction. 
  @JsonKey(name: "points")
  final double? points;

  ///The transaction label. 
  @JsonKey(name: "name")
  final String? name;

  ///The transaction type ID. 
  @JsonKey(name: "transaction_type")
  final int? transactionType;

  ///Date the transaction was created. 
  @JsonKey(name: "created_at")
  final String? createdAt;

  ///Date the transaction was last updated. 
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @JsonKey(name: "transaction_details")
  final TransactionDetails? transactionDetails;

  Transaction({
    required this.id,
    required this.amount,
    required this.points,
    required this.name,
    required this.transactionType,
    required this.createdAt,
    required this.updatedAt,
    required this.transactionDetails,
  });

  factory Transaction.fromJson(Map<String, dynamic> data) => _$TransactionFromJson(data);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}


