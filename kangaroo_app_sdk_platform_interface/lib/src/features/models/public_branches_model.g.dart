// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_branches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicBranchesModel _$PublicBranchesModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PublicBranchesModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['data'],
        );
        final val = PublicBranchesModel(
          data: $checkedConvert(
              'data',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => Branch.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PublicBranchesModelToJson(
        PublicBranchesModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
