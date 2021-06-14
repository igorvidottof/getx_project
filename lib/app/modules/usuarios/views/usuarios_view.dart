import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/usuarios_controller.dart';

class UsuariosView extends GetView<UsuariosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.nome),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'O ${controller.novoNome} possui ${controller.idade} anos',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: controller.voltarPagina,
              child: Text(
                'Voltar',
              ),
            ),
            ElevatedButton(
              onPressed: controller.voltarHome,
              child: Text(
                'Voltar Home',
              ),
            )
          ],
        ),
      ),
    );
  }
}
