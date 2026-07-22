// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserProfileRequest _$UpdateUserProfileRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateUserProfileRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'first_name',
            'last_name',
            'birth_date',
            'language',
            'gender',
            'profile_photo',
            'address'
          ],
        );
        final val = UpdateUserProfileRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          birthDate: $checkedConvert('birth_date', (v) => v as String?),
          language: $checkedConvert('language', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          profilePhoto: $checkedConvert('profile_photo', (v) => v as String?),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : AddressModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'birthDate': 'birth_date',
        'profilePhoto': 'profile_photo'
      },
    );

Map<String, dynamic> _$UpdateUserProfileRequestToJson(
        UpdateUserProfileRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birth_date': instance.birthDate,
      'language': instance.language,
      'gender': instance.gender,
      'profile_photo': instance.profilePhoto,
      'address': instance.address?.toJson(),
    };
