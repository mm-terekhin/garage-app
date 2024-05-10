import 'package:garage/shared/domain/domain.dart';

abstract interface class AuthRepository {
  Future<void> logIn({
    required LogInData data,
  });

  Future<void> signUp({
    required SignUpData data,
  });
}
