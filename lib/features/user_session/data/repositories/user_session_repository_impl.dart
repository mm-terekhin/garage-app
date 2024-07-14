import 'dart:async';

import '../../../../shared/domain/domain.dart';
import '../../user_session.dart';

class UserSessionRepositoryImpl implements UserSessionRepository {
  UserSessionRepositoryImpl({
    required LocaleUserSessionDataSource localeUserSessionDataSource,
  })  : _localeUserSessionDataSource = localeUserSessionDataSource,
        _userSessionController = StreamController<UserSession>.broadcast();

  final LocaleUserSessionDataSource _localeUserSessionDataSource;
  late final StreamController<UserSession> _userSessionController;

  @override
  UserSession getUserSession() {
    final data = _localeUserSessionDataSource.getSession();

    if (data == null) {
      const session = UserSession.empty();
      _userSessionController.add(session);
      return session;
    }

    _userSessionController.add(data);

    return data;
  }

  @override
  Future<void> removeSession() async {
    await _localeUserSessionDataSource.removeSession();
    _userSessionController.add(const UserSession.empty());
  }

  @override
  Future<void> setSession({
    required UserSession userSession,
  }) async {
    await _localeUserSessionDataSource.setSession(
      userSession: userSession,
    );
    _userSessionController.add(userSession);
  }

  @override
  Stream<UserSession> get userSessionChanges => _userSessionController.stream;
}
