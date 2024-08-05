// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crm_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrmRegisterRequest _$CrmRegisterRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CrmRegisterRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'first_name',
            'last_name',
            'email',
            'phone',
            'country_code',
            'gender',
            'referral_code',
            'birth_date',
            'postal_code',
            'country',
            'branch_id',
            'promotions_mail',
            'terms_and_conditions',
            'consent',
            'custom_field_1',
            'custom_field_2',
            'custom_field_3',
            'custom_field_4',
            'custom_field_5',
            'address',
            'language'
          ],
        );
        final val = CrmRegisterRequest(
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phone: $checkedConvert('phone', (v) => v as String?),
          countryCode: $checkedConvert('country_code', (v) => v as String?),
          gender: $checkedConvert('gender', (v) => v as String?),
          referralCode: $checkedConvert('referral_code', (v) => v as String?),
          birthDate: $checkedConvert('birth_date', (v) => v as String?),
          postalCode: $checkedConvert('postal_code', (v) => v as String?),
          country: $checkedConvert('country', (v) => v as String?),
          branchId: $checkedConvert('branch_id', (v) => v as String?),
          promotionsMail: $checkedConvert('promotions_mail', (v) => v as bool?),
          termsAndConditions:
              $checkedConvert('terms_and_conditions', (v) => v as bool?),
          consent: $checkedConvert(
              'consent',
              (v) => v == null
                  ? null
                  : UserConsent.fromJson(v as Map<String, dynamic>)),
          customField1: $checkedConvert('custom_field_1', (v) => v as String?),
          customField2: $checkedConvert('custom_field_2', (v) => v as String?),
          customField3: $checkedConvert('custom_field_3', (v) => v as String?),
          customField4: $checkedConvert('custom_field_4', (v) => v as String?),
          customField5: $checkedConvert('custom_field_5', (v) => v as String?),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : UserAddress.fromJson(v as Map<String, dynamic>)),
          language: $checkedConvert('language', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'countryCode': 'country_code',
        'referralCode': 'referral_code',
        'birthDate': 'birth_date',
        'postalCode': 'postal_code',
        'branchId': 'branch_id',
        'promotionsMail': 'promotions_mail',
        'termsAndConditions': 'terms_and_conditions',
        'customField1': 'custom_field_1',
        'customField2': 'custom_field_2',
        'customField3': 'custom_field_3',
        'customField4': 'custom_field_4',
        'customField5': 'custom_field_5'
      },
    );

Map<String, dynamic> _$CrmRegisterRequestToJson(CrmRegisterRequest instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'gender': instance.gender,
      'referral_code': instance.referralCode,
      'birth_date': instance.birthDate,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'branch_id': instance.branchId,
      'promotions_mail': instance.promotionsMail,
      'terms_and_conditions': instance.termsAndConditions,
      'consent': instance.consent?.toJson(),
      'custom_field_1': instance.customField1,
      'custom_field_2': instance.customField2,
      'custom_field_3': instance.customField3,
      'custom_field_4': instance.customField4,
      'custom_field_5': instance.customField5,
      'address': instance.address?.toJson(),
      'language': instance.language,
    };
