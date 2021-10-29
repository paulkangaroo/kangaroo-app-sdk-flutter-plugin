// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferFrom _$TransferFromFromJson(Map<String, dynamic> json) => TransferFrom(
      name: json['name'] as String,
      phone: json['phone'] as String?,
      countryCode: json['country_code'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$TransferFromToJson(TransferFrom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'email': instance.email,
    };
