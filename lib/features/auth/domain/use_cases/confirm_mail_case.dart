import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/features/auth/auth.dart';
import 'package:garage/shared/domain/domain.dart';

class ConfirmMailCase implements UseCase<void, UserCredential> {
  const ConfirmMailCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(UserCredential credential) async {
    await _authRepository.sendEmail(
      credential: credential,
    );
  }
}
