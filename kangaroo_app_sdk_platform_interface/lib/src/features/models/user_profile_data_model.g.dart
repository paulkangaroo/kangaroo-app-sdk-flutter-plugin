// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfileDataModel _$UserProfileDataModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UserProfileDataModel',
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
            'gender',
            'birth_date',
            'language',
            'country_code',
            'profile_photo',
            'created_at',
            'updated_at',
            'enabled',
            'email_verified',
            'phone_verified',
            'business',
            'profiles',
            'address'
          ],
        );
        final val = UserProfileDataModel(
          id: $checkedConvert('id', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          qrcode: $checkedConvert('qrcode', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          birthDate: $checkedConvert('birth_date', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          profilePhoto: $checkedConvert('profile_photo', (v) => v as String?),
          createdAt: $checkedConvert('created_at', (v) => v as String?),
          updatedAt: $checkedConvert('updated_at', (v) => v as String?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          emailVerified: $checkedConvert('email_verified', (v) => v as bool?),
          phoneVerified: $checkedConvert('phone_verified', (v) => v as bool?),
          business: $checkedConvert(
              'business',
              (v) => v == null
                  ? null
                  : BusinessData.fromJson(v as Map<String, dynamic>)),
          profiles: $checkedConvert(
              'profiles',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      ProfilesDataModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : AddressDataModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'birthDate': 'birth_date',
        'countryCode': 'country_code',
        'profilePhoto': 'profile_photo',
        'createdAt': 'created_at',
        'updatedAt': 'updated_at',
        'emailVerified': 'email_verified',
        'phoneVerified': 'phone_verified'
      },
    );

Map<String, dynamic> _$UserProfileDataModelToJson(
        UserProfileDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone': instance.phone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'qrcode': instance.qrcode,
      'gender': instance.gender,
      'birth_date': instance.birthDate,
      'language': instance.language,
      'country_code': instance.countryCode,
      'profile_photo': instance.profilePhoto,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'enabled': instance.enabled,
      'email_verified': instance.emailVerified,
      'phone_verified': instance.phoneVerified,
      'business': instance.business?.toJson(),
      'profiles': instance.profiles?.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
    };
