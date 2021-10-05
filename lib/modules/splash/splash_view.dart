import 'package:flutter/material.dart';
import 'package:movie_db_project/application/utils/app_assets_path.dart';
import 'package:movie_db_project/application/utils/app_theme.dart';
import 'package:movie_db_project/application/utils/ui_media_query.dart';

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
        color: AppTheme.darkBlue,
        child: Center(
          child: SizedBox(
            height: heightPercent(50, context),
            width: widthPercent(50, context),
            child: Image.asset(AppAssetsPath.logoPath),
          ),
        ),
      ),
    );
  }
}
