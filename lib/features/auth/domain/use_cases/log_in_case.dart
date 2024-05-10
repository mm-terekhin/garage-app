import 'package:garage/shared/domain/domain.dart';
import '../../auth.dart';

class LogInCase implements UseCase<void, LogInData> {
  const LogInCase({required AuthRepository authRepository})
      : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(LogInData logInData) async {
    await _authRepository.logIn(
      data: logInData,
    );
  }
}
