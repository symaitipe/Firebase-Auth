
import 'package:app_log/screens/authentication/register.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget{
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();

}


class _AuthenticateState extends State<Authenticate>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Register(),
    );
  }

}