import 'package:freezed_annotation/freezed_annotation.dart';
import '../entities.dart';

part 'user_session.freezed.dart';

@freezed
class UserSession with _$UserSession {
  const UserSession._();

  const factory UserSession({
    required TokenData? token,
    required UserData? user,
  }) = _UserSession;

  const factory UserSession.empty({
    @Default(null) TokenData? token,
    @Default(null) UserData? user,
  }) = _UserSessionEmpty;

  bool get isAuthenticated => token?.uid != null;
}
