// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfilesDataModel _$ProfilesDataModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProfilesDataModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'email',
            'phone',
            'first_name',
            'last_name',
            'qrcode',
            'created_at',
            'master_account',
            'business'
          ],
        );
        final val = ProfilesDataModel(
          id: $checkedConvert('id', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          qrcode: $checkedConvert('qrcode', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          masterAccount: $checkedConvert('master_account', (v) => v as bool?),
          business: $checkedConvert(
              'business',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'createdAt': 'created_at',
        'masterAccount': 'master_account'
      },
    );

Map<String, dynamic> _$ProfilesDataModelToJson(ProfilesDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'qrcode': instance.qrcode,
      'created_at': instance.createdAt,
      'master_account': instance.masterAccount,
      'business': instance.business?.toJson(),
    };
