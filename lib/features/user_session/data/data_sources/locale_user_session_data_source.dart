import 'package:hive/hive.dart';
import '../../../../shared/shared.dart';

abstract interface class LocaleUserSessionDataSource {
  Future<void> setSession({required UserSession userSession});

  UserSession? getSession();

  Future<void> removeSession();
}

class LocaleUserSessionDataSourceImpl implements LocaleUserSessionDataSource {
  const LocaleUserSessionDataSourceImpl._internal({
    required Box<UserSession> userSessionBox,
  }) : _userSessionBox = userSessionBox;

  static Future<LocaleUserSessionDataSourceImpl> create({
    required HiveInterface hive,
    required HiveCipherDataSource hiveCipherDataSource,
  }) async {
    final cipher = await hiveCipherDataSource.getCipher();

    final userSessionBox = await hive.openBox<UserSession>(
      userSessionBoxKey,
      encryptionCipher: cipher,
    );

    final hiveAuthDataSource = LocaleUserSessionDataSourceImpl._internal(
      userSessionBox: userSessionBox,
    );

    return hiveAuthDataSource;
  }

  static const String userSessionBoxKey = 'userSessionBox';
  static const String userSessionKey = 'current';

  final Box<UserSession> _userSessionBox;

  @override
  UserSession? getSession() {
    final userSession = _userSessionBox.get(userSessionKey);

    return userSession;
  }

  @override
  Future<void> removeSession() async {
    await _userSessionBox.delete(userSessionKey);
  }

  @override
  Future<void> setSession({required UserSession userSession}) async {
    await _userSessionBox.put(userSessionKey, userSession);
  }
}
