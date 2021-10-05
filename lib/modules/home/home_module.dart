import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:movie_db_project/application/modules/module.dart';
import 'package:movie_db_project/modules/home/home_binding.dart';
import 'package:movie_db_project/modules/home/home_view.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/home',
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
