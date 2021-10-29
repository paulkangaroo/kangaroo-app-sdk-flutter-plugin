import 'package:json_annotation/json_annotation.dart';
import 'package:kangaroo_app_sdk_platform_interface/src/base/result.dart';

part 'state.g.dart';

/// State class represents any Result state that is not
/// a Success eg Error, Loading, Idle, etc...
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class State {
  final String type;
  final int code;
  final String msg;

  State({required this.type, required this.code, required this.msg});

  factory State.fromJson(Map<String, dynamic> data) => _$StateFromJson(data);

  Map<String, dynamic> toJson() => _$StateToJson(this);
}

Result<T> mapState<T>(State state) {
  switch (state.type) {
    case "Idle":
      return Idle<T>();
    case "Loading":
      return Loading<T>();
    case "UnauthorizedError":
      return Unauthorized<T>(code: state.code, message: state.msg);
    default:
      return Error<T>(code: state.code, message: state.msg);
  }
}
