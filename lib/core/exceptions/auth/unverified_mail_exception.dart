import 'package:firebase_auth/firebase_auth.dart';
import 'package:garage/core/core.dart';

class UnverifiedMailException extends AuthException {
  UnverifiedMailException({
    super.code = 'unverified',
    super.message = 'Your email is not verified',
  });

}
