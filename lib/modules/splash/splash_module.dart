import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_db_project/application/modules/module.dart';
import 'package:movie_db_project/modules/splash/splash_binding.dart';
import 'package:movie_db_project/modules/splash/splash_view.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
