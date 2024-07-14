import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_data.freezed.dart';

@freezed
class TokenData with _$TokenData {
  const factory TokenData({
    required final String accessToken,
    required final String uid,
  }) = _TokenData;
}
