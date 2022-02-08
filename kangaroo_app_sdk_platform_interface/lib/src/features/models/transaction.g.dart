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
            'updated_at'
          ],
        );
        final val = Transaction(
          id: $checkedConvert('id', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => (v as num?)?.toDouble()),
          name: $checkedConvert('name', (v) => v as String?),
          transactionType:
              $checkedConvert('transaction_type', (v) => v as int?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'transactionType': 'transaction_type',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
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
    };
