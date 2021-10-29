// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

State _$StateFromJson(Map<String, dynamic> json) => State(
      type: json['type'] as String,
      code: json['code'] as int,
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$StateToJson(State instance) => <String, dynamic>{
      'type': instance.type,
      'code': instance.code,
      'msg': instance.msg,
    };
