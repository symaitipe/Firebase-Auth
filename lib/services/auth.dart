
import 'package:app_log/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthServices {

  //create a Firebase object instance called auth (just like a db connection instance)
  final FirebaseAuth _auth = FirebaseAuth.instance;


  //create a user using firebase credentials
  UserModel? _userCreationWithFirebaseUid (User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }


  //create the Stream for checking the auth changes in the user
  Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userCreationWithFirebaseUid);
  }



  // Feat 1: Sign In anonymously
  Future<dynamic> signInAnonymously() async{
    try{
       UserCredential result = await _auth.signInAnonymously();
       User? user = result.user;
       return _userCreationWithFirebaseUid(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}