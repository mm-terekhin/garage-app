import '../../../../shared/domain/domain.dart';

abstract interface class UserSessionRepository {
  Future<void> setSession({required UserSession userSession});

  UserSession getUserSession();

  Future<void> removeSession();

  Stream<UserSession> get userSessionChanges;
}
