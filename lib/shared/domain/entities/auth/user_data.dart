import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required final String username,
    final String? mail,
    final String? phone,
  }) = _UserData;
}
