import 'package:garage/shared/data/data.dart';
import 'package:garage/shared/domain/entities/auth/log_in_data.dart';
import 'package:garage/shared/domain/entities/auth/sign_up_data.dart';

import '../../../../core/core.dart';
import '../../auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required RemoteAuthDataSource remoteAuthDataSource,
  }) : _remoteAuthDataSource = remoteAuthDataSource;

  final RemoteAuthDataSource _remoteAuthDataSource;

  @override
  Future<void> logIn({
    required LogInData data,
  }) async {
    final response = await _remoteAuthDataSource.logIn(
      request: LogInRequestDto(
        email: data.login,
        password: data.password,
      ),
    );

    if (!(response.user?.emailVerified ?? false)) {
      throw UnverifiedMailException();
    }
  }

  @override
  Future<void> signUp({
    required SignUpData data,
  }) async {
    final credential = await _remoteAuthDataSource.signUp(
      request: SignUpRequestDto(
        email: data.login,
        password: data.password,
      ),
    );

    await _remoteAuthDataSource.sendEmail(
      credential: credential,
    );
  }
}
