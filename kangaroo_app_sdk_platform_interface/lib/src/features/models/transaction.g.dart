// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Transaction',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'amount',
            'points',
            'name',
            'transaction_type',
            'created_at',
            'updated_at',
            'transaction_details'
          ],
        );
        final val = Transaction(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => (v as num?)?.toDouble()),
          name: $checkedConvert('name', (v) => v as String?),
          transactionType:
              $checkedConvert('transaction_type', (v) => (v as num?)?.toInt()),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          transactionDetails: $checkedConvert(
              'transaction_details',
              (v) => v == null
                  ? null
                  : TransactionDetails.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'transactionType': 'transaction_type',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'transactionDetails': 'transaction_details'
      },
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'transaction_type': instance.transactionType,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'transaction_details': instance.transactionDetails?.toJson(),
    };
