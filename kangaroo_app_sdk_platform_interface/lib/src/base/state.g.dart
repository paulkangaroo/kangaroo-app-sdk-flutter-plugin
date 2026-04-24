// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

State _$StateFromJson(Map<String, dynamic> json) => State(
      type: json['type'] as String,
      code: (json['code'] as num).toInt(),
      msg: json['msg'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$StateToJson(State instance) => <String, dynamic>{
      'type': instance.type,
      'code': instance.code,
      'msg': instance.msg,
      'description': instance.description,
    };
