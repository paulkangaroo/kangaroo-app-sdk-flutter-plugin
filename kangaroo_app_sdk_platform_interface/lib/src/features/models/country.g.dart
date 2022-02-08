// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      codeIso3: json['code_iso3'] as String?,
      phoneCode: json['phone_code'] as int?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'code_iso3': instance.codeIso3,
      'phone_code': instance.phoneCode,
    };
