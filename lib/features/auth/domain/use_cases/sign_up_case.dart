import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/domain/domain.dart';

class SignUpCase implements UseCase<void, SignUpData> {
  const SignUpCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(SignUpData signUpData) async {
    await _authRepository.signUp(data: signUpData);
  }
}
