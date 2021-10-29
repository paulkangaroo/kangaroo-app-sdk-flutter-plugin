// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BranchAddress _$BranchAddressFromJson(Map<String, dynamic> json) =>
    BranchAddress(
      formatted: json['formatted'] as String?,
      street: json['street'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BranchAddressToJson(BranchAddress instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'street': instance.street,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'long': instance.long,
    };
