import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_in_request_dto.g.dart';
part 'log_in_request_dto.freezed.dart';

@freezed
class LogInRequestDto with _$LogInRequestDto {
  const factory LogInRequestDto({
    required String email,
    required String password,
  }) = _LogInRequestDto;

  factory LogInRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LogInRequestDtoFromJson(json);

}
