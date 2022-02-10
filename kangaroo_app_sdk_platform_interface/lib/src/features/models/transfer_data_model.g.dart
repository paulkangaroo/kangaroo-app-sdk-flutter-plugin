// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferDataModel _$TransferDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TransferDataModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'amount',
            'name',
            'created_at',
            'updated_at',
            'customer'
          ],
        );
        final val = TransferDataModel(
          id: $checkedConvert('id', (v) => v as int?),
          amount: $checkedConvert('amount', (v) => (v as num?)?.toDouble()),
          name: $checkedConvert('name', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          customer: $checkedConvert(
              'customer',
              (v) => v == null
                  ? null
                  : UserProfileDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'updatedAt': 'updated_at'},
    );

Map<String, dynamic> _$TransferDataModelToJson(TransferDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'customer': instance.customer?.toJson(),
    };
