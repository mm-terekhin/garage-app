import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/shared/domain/domain.dart';

abstract interface class AuthRepository {
  Future<UserCredential> logIn({
    required LogInData data,
  });

  Future<UserCredential> signUp({
    required SignUpData data,
  });

  Future<void> sendEmail({
    required UserCredential credential,
  });
}
