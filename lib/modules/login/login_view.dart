import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:movie_db_project/application/utils/app_assets_path.dart';
import 'package:movie_db_project/application/utils/app_theme.dart';
import 'package:movie_db_project/application/utils/ui_media_query.dart';
import 'package:movie_db_project/modules/login/login_controller.dart';
import 'package:social_auth_buttons/res/buttons/google_auth_button.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: widthPercent(50, context),
            child: Image.asset(AppAssetsPath.logoPath),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: heightPercent(5, context),
                horizontal: widthPercent(5, context)),
            child: GoogleAuthButton(
              height: heightPercent(5, context),
              text: "Login com o Google",
              onPressed: () => controller.login(),
            ),
          ),
        ],
      ),
    );
  }
}
