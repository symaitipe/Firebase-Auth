
import 'package:app_log/screens/authentication/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: FirebaseOptions(
    //     apiKey: "AIzaSyByKD_SWrUBrJnn97VM19KMC1z0KEmdD_4",
    //     appId: "1:1047491807023:android:44910e5b9cf8ab42e543da",
    //     messagingSenderId: "1047491807023",
    //     projectId: "myapp-98da3"
    // )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SignIn(),
    );
  }
}


