import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.ok(T data) = Success<T>;
  const factory Result.err(String message) = Failure<T>;
}