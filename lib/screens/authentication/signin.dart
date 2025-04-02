import 'package:app_log/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(const Size(200, 50)),
            backgroundColor: WidgetStateProperty.all(Colors.blue),
            foregroundColor: WidgetStateProperty.all(Colors.white),
          ),
          onPressed: () async {
             dynamic result = await _authServices.signInAnonymously();
             result == null ?print("Anonymous Login Failed") : print("Login success ${result.uid}");
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
