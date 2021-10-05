import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import './login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserCredential> login() async {
    final googleUser = await GoogleSignIn().signIn();
    final auth = await googleUser?.authentication;

    if (auth != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );

      return FirebaseAuth.instance.signInWithCredential(credential);
    }

    throw Exception("Falha ao logar com o Google");
  }
}
