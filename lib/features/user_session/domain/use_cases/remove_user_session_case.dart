import 'package:garage/shared/domain/domain.dart';
import '../../user_session.dart';

class RemoveUserSessionCase implements UseCase<void, NoParams> {
  const RemoveUserSessionCase({
    required UserSessionRepository userSessionRepository,
  }) : _userSessionRepository = userSessionRepository;

  final UserSessionRepository _userSessionRepository;

  @override
  Future<void> call(NoParams params) async {
    await _userSessionRepository.removeSession();
  }
}
