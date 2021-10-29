import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.idle() = Idle<T>;

  const factory Result.loading() = Loading<T>;

  const factory Result.success({@required T? data}) = Success<T>;

  const factory Result.unauthorized({
    @Default(400) int code,
    @Default('unauthorized') String message,
  }) = Unauthorized<T>;

  const factory Result.error({
    @Default(-1) int code,
    @Default('unknown error') String message,
  }) = Error<T>;
}
