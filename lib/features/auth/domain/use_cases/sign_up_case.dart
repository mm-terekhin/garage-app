import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/domain/domain.dart';

class SignUpCase implements UseCase<UserCredential, SignUpData> {
  const SignUpCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<UserCredential> call(SignUpData signUpData) async {
    final credential = await _authRepository.signUp(data: signUpData);

  return credential;
  }
}
