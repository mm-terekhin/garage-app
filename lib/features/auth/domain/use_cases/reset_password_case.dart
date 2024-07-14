import 'package:garage/shared/domain/domain.dart';

import '../../auth.dart';

class ResetPasswordCase implements UseCase<void, String> {
  const ResetPasswordCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(String email) async {
    await _authRepository.resetPassword(
      email: email,
    );
  }
}
