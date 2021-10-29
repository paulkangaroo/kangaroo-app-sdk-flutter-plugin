// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_phone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchPhone _$BranchPhoneFromJson(Map<String, dynamic> json) => BranchPhone(
      number: json['number'] as String?,
      countryCode: json['country_code'] as String?,
      nationalFormat: json['national_format'] as String?,
      intlFormat: json['intl_format'] as String?,
    );

Map<String, dynamic> _$BranchPhoneToJson(BranchPhone instance) =>
    <String, dynamic>{
      'number': instance.number,
      'country_code': instance.countryCode,
      'national_format': instance.nationalFormat,
      'intl_format': instance.intlFormat,
    };
