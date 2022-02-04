import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService{
  final FirebaseAuth _firebaseAuth;
  AuthenticationService(this._firebaseAuth);
  Stream<User?>get authStateChanges => _firebaseAuth.authStateChanges();
  Future<String> signin({required String email, required String password})async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email:email,password:password);
      return "Signed In";
    }
    on FirebaseAuthException catch(e){
      return e.message!;
    }
  }
  Future<String> signout()async{
    await _firebaseAuth.signOut();
    return "Logged Out";
  }
}