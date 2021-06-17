import 'package:firebase_auth/firebase_auth.dart';
import 'package:photo_gram/models/UserId.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserId?> register(String email, String password) async {
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      return UserId(result.user!.uid);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<UserId?> login(String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return UserId(result.user!.uid);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}