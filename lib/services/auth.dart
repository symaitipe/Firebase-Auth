
import 'package:firebase_auth/firebase_auth.dart';


class AuthServices {

  //create a Firebase object instance called auth (just like a db connection instance)
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Feat 1: Sign In anonymously
  Future<dynamic> signInAnonymously() async{
    try{
       UserCredential result = await _auth.signInAnonymously();
       User? user = result.user;
       return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}