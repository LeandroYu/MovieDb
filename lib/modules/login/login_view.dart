import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          RemoteConfig.instance.getString('movie_token'),
        ),
      ),
      body: Container(),
    );
  }
}