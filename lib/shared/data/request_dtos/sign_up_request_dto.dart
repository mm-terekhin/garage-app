import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_dto.g.dart';
part 'sign_up_request_dto.freezed.dart';

@freezed
class SignUpRequestDto with _$SignUpRequestDto {
  const factory SignUpRequestDto({
    required String name,
    required String email,
    required String password,
  }) = _SignUpRequestDto;

  factory SignUpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestDtoFromJson(json);
}
