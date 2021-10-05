import 'package:get/get.dart';
import 'package:movie_db_project/repositories/login/login_repository.dart';
import 'package:movie_db_project/repositories/login/login_repository_impl.dart';
import 'package:movie_db_project/services/login/login_service.dart';
import 'package:movie_db_project/services/login/login_service_impl.dart';

class ApplicationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
  }
}
