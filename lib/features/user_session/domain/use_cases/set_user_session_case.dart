import 'package:garage/shared/domain/domain.dart';
import '../../user_session.dart';

class SetUserSessionCase implements UseCase<void, UserSession> {
  const SetUserSessionCase({
    required UserSessionRepository userSessionRepository,
  }) : _userSessionRepository = userSessionRepository;

  final UserSessionRepository _userSessionRepository;

  @override
  Future<void> call(UserSession userSession) async {
    await _userSessionRepository.setSession(
      userSession: userSession,
    );
  }
}
