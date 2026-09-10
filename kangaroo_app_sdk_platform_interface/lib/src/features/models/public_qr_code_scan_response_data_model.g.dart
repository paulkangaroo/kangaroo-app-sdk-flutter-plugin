// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_qr_code_scan_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicQrCodeScanResponseDataModel _$PublicQrCodeScanResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicQrCodeScanResponseDataModel',
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
            'comments',
            'created_at',
            'updated_at',
            'customer'
          ],
        );
        final val = PublicQrCodeScanResponseDataModel(
          id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          points: $checkedConvert('points', (v) => (v as num?)?.toDouble()),
          name: $checkedConvert('name', (v) => v as String?),
          transactionType:
              $checkedConvert('transaction_type', (v) => (v as num?)?.toInt()),
          comments: $checkedConvert('comments', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          customer: $checkedConvert(
              'customer',
              (v) => v == null
                  ? null
                  : CustomerDetailsModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'transactionType': 'transaction_type',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at'
      },
    );

Map<String, dynamic> _$PublicQrCodeScanResponseDataModelToJson(
        PublicQrCodeScanResponseDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'points': instance.points,
      'name': instance.name,
      'transaction_type': instance.transactionType,
      'comments': instance.comments,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };
