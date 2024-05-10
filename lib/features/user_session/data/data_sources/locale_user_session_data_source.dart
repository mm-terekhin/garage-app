abstract interface class LocaleUserSessionDataSource {
  Future<void> setSession();

  Future<void> getSession();

  Future<void> removeSession();
}

class LocaleUserSessionDataSourceImpl implements LocaleUserSessionDataSource {
  const LocaleUserSessionDataSourceImpl._internal();

  @override
  Future<void> getSession() async {}

  @override
  Future<void> removeSession() async {}

  @override
  Future<void> setSession() async {}
}
