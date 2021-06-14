import 'package:get/get.dart';
import 'package:getx_project/app/routes/app_pages.dart';

class UsuariosController extends GetxController {
  String novoNome;
  int idade;

  @override
  onInit() {
    novoNome = Get.arguments['nome'];
    idade = Get.arguments['idade'];
    super.onInit();
  }

  @override
  onReady() {
    super.onReady();
  }

  @override
  onClose() {
    super.onClose();
  }

  RxString _nome = 'Márcio'.obs;
  String get nome => this._nome.value;
  set nome(String value) => this._nome.value = value;

  void voltarPagina() {
    Get.back();
    // Get.close(1);
  }

  void voltarHome() {
    Get.offAllNamed(Routes.HOME);
  }
}
