import '../../../../shared/shared.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class RemoteAuthDataSource {
  Future<void> logIn({
    required LogInRequestDto request,
  });

  Future<void> signUp();
}

class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  const RemoteAuthDataSourceImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;

  final FirebaseAuth _auth;

  @override
  Future<void> logIn({
    required LogInRequestDto request,
  }) async {
      final credential = await _auth.signInWithEmailAndPassword(
        email: request.email,
        password: request.password,
      );
  }

  @override
  Future<void> signUp() async {}
}
