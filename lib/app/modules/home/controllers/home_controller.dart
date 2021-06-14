import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/app/modules/usuarios/views/usuarios_view.dart';
import 'package:getx_project/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxString _textoRetornado = 'Esperando Texto...'.obs;
  String get textoRetornado => this._textoRetornado.value;
  set textoRetornado(String value) => this._textoRetornado.value = value;

  @override
  onInit() {
    super.onInit();
  }

  RxInt _contador = 0.obs;
  int get contador => this._contador.value;
  set contador(int value) => this._contador.value = value;

  void incrementar() {
    contador++;
  }

  Rx<Color> _cor = Colors.white.obs;
  Color get cor => this._cor.value;
  set cor(Color value) => this._cor.value = value;

  void mudarCor() {
    cor = Colors.yellow;
  }

  void irParaUsuarios(String nome, int idade) async {
    Get.toNamed(Routes.USUARIOS, arguments: {
      'nome': nome,
      'idade': idade,
    });
  }
}
