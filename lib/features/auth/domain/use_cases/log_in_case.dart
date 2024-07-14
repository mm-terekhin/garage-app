import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/shared/domain/domain.dart';
import '../../auth.dart';

class LogInCase implements UseCase<UserCredential, LogInData> {
  const LogInCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<UserCredential> call(LogInData logInData) async {
   final credential =  await _authRepository.logIn(
      data: logInData,
    );

   return credential;
  }
}
