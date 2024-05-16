import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities.dart';

part 'user_session.freezed.dart';

@freezed
class UserSession with _$UserSession {
  const factory UserSession({
    required TokenData token,
    required User user,
  }) = _UserSession;
}
