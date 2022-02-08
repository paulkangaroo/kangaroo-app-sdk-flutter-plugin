// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Branch _$BranchFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Branch',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'id',
            'name',
            'web_site',
            'phone',
            'logo',
            'cover_photo',
            'address'
          ],
        );
        final val = Branch(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          webSite: $checkedConvert('web_site', (v) => v as String?),
          phone: $checkedConvert(
              'phone',
              (v) => v == null
                  ? null
                  : BranchPhone.fromJson(v as Map<String, dynamic>)),
          logo: $checkedConvert(
              'logo',
              (v) =>
                  v == null ? null : Image.fromJson(v as Map<String, dynamic>)),
          coverPhoto: $checkedConvert(
              'cover_photo',
              (v) =>
                  v == null ? null : Image.fromJson(v as Map<String, dynamic>)),
          address: $checkedConvert(
              'address',
              (v) => v == null
                  ? null
                  : BranchAddress.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'webSite': 'web_site', 'coverPhoto': 'cover_photo'},
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
