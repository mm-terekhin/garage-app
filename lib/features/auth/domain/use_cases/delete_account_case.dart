import 'package:garage/shared/domain/domain.dart';

import '../../auth.dart';

class DeleteAccountCase implements UseCase<void, NoParams> {
  const DeleteAccountCase({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  final AuthRepository _authRepository;

  @override
  Future<void> call(NoParams params) async {
    await _authRepository.deleteAccount();
  }

}