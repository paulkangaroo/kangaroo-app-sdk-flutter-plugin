// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Branch _$BranchFromJson(Map<String, dynamic> json) => Branch(
      id: json['id'] as String?,
      name: json['name'] as String?,
      webSite: json['web_site'] as String?,
      phone: json['phone'] == null
          ? null
          : BranchPhone.fromJson(json['phone'] as Map<String, dynamic>),
      logo: json['logo'] == null
          ? null
          : Image.fromJson(json['logo'] as Map<String, dynamic>),
      coverPhoto: json['cover_photo'] == null
          ? null
          : Image.fromJson(json['cover_photo'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : BranchAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BranchToJson(Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'web_site': instance.webSite,
      'phone': instance.phone?.toJson(),
      'logo': instance.logo?.toJson(),
      'cover_photo': instance.coverPhoto?.toJson(),
      'address': instance.address?.toJson(),
    };
