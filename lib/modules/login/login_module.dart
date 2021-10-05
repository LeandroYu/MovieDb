import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_db_project/application/modules/module.dart';
import 'package:movie_db_project/modules/login/login_binding.dart';
import 'package:movie_db_project/modules/login/login_view.dart';

class LoginModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: "/login",
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
