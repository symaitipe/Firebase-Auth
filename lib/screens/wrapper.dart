
import 'package:app_log/models/user_model.dart';
import 'package:app_log/screens/authentication/authenticate.dart';
import 'package:app_log/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget{
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    return user == null ? Authenticate() : Home();

  }


}