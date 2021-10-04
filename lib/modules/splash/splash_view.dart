import 'package:flutter/material.dart';
import 'package:movie_db_project/application/utils/utils.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff030521),
        child: Center(
          child: SizedBox(
            height: heightPercent(50, context),
            width: widthPercent(50, context),
            child: Image.asset('assets/movie_logo.png'),
          ),
        ),
      ),
    );
  }
}
