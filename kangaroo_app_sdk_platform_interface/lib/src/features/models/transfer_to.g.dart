// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_to.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferTo _$TransferToFromJson(Map<String, dynamic> json) => TransferTo(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['country_code'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$TransferToToJson(TransferTo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'country_code': instance.countryCode,
      'email': instance.email,
    };
