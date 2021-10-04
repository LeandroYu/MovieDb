import 'package:get/get.dart';
import 'package:movie_db_project/modules/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashController(),
    );
  }
}
