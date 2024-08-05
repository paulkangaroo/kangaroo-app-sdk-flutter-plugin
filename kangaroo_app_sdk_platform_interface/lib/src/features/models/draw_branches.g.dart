// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draw_branches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrawBranches _$DrawBranchesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DrawBranches',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['id', 'name'],
        );
        final val = DrawBranches(
          id: $checkedConvert('id', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DrawBranchesToJson(DrawBranches instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
