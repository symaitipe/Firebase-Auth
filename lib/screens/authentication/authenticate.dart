
import 'package:app_log/screens/authentication/signin.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget{
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();

}


class _AuthenticateState extends State<Authenticate>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }

}