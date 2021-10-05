import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:logger/logger.dart';
import 'package:movie_db_project/application/widgets/loader/loaders_mixin.dart';
import 'package:movie_db_project/application/widgets/messages/messages_mixin.dart';
import 'package:movie_db_project/application/widgets/messages/model/message_model.dart';
import 'package:movie_db_project/services/login/login_service.dart';

class LoginController extends GetxController with LoadersMixin, MessagesMixin {
  final LoginService _loginService;
  final isLoading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({required LoginService loginService})
      : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListner(isLoading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      isLoading(true);
      await _loginService.login().whenComplete(() {
        isLoading(false);
      });
      Get.offAllNamed('/home');
    } catch (e) {
      Logger().e(e);
      isLoading(false);
      message(MessageModel.error(
          title: 'Erro', message: 'Falha ao Realizado Login!'));
    }
  }
}
