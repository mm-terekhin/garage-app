import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthException extends FirebaseAuthException {
  AuthException({
    required super.code,
    required super.message,
  });
}
