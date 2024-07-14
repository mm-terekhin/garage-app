import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/domain/domain.dart';

class LogOutCase implements UseCase<void, NoParams> {
  const LogOutCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(NoParams params) async {
    await _authRepository.logOut(
    );
  }
}
