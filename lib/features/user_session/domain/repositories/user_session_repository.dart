abstract interface class UserSessionRepository {
  Future<void> setSession();

  Future<void> getSession();

  Future<void> removeSession();
}
