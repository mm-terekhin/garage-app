import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'user_session.freezed.dart';

@freezed
class UserSession with _$UserSession {
  const factory UserSession({
    required String id,
    required User user,
  }) = _UserSession;
}
