import 'package:json_annotation/json_annotation.dart';

part 'empty_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  fieldRename: FieldRename.snake,
  checked: true,
  disallowUnrecognizedKeys: true,
)
class EmptyResponse {
  EmptyResponse();

  factory EmptyResponse.fromJson(Map<String, dynamic> data) =>
      _$EmptyResponseFromJson(data);

  Map<String, dynamic> toJson() => _$EmptyResponseToJson(this);
}
