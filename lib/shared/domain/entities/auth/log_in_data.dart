import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_data.freezed.dart';

@freezed
class LogInData with _$LogInData {
  const LogInData._();

  const factory LogInData({
    required final String login,
    required final String password,
  }) = _LogInData;
}
