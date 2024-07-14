import 'package:garage/shared/domain/domain.dart';
import '../../user_session.dart';

class GetUserSessionCase implements UseCase<UserSession, NoParams> {
  const GetUserSessionCase({
    required UserSessionRepository userSessionRepository,
  }) : _userSessionRepository = userSessionRepository;

  final UserSessionRepository _userSessionRepository;

  @override
  UserSession call(NoParams params) {
    final data = _userSessionRepository.getUserSession();

    return data;
  }
}
