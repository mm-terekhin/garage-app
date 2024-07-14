import '../../../../shared/shared.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class RemoteAuthDataSource {
  Future<UserCredential> logIn({
    required LogInRequestDto request,
  });

  Future<UserCredential> signUp({
    required SignUpRequestDto request,
  });

  Future<void> sendEmail({
    required UserCredential credential,
  });

  Future<void> resetPassword({
    required String email,
  });

  Future<void> logOut();

  Future<void> deleteAccount();
}

class RemoteAuthDataSourceImpl implements RemoteAuthDataSource {
  const RemoteAuthDataSourceImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;

  final FirebaseAuth _auth;

  @override
  Future<UserCredential> logIn({
    required LogInRequestDto request,
  }) async {
    final response = await _auth.signInWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );

    return response;
  }

  @override
  Future<UserCredential> signUp({
    required SignUpRequestDto request,
  }) async {
    final response = await _auth.createUserWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );
    return response;
  }

  @override
  Future<void> sendEmail({
    required UserCredential credential,
  }) async {
    await credential.user?.sendEmailVerification();
  }

  @override
  Future<void> resetPassword({
    required String email,
  }) async {
    await _auth.sendPasswordResetEmail(
      email: email,
    );
  }

  @override
  Future<void> logOut() async {
    await _auth.signOut();
  }

  @override
  Future<void> deleteAccount() async {
    await _auth.currentUser?.delete();
  }
}
