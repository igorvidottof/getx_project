import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(
        () => Container(
          color: controller.cor,
          child: Column(
            children: [
              Obx(
                () => Text('O contador é igual a ${controller.contador}'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: controller.incrementar,
                child: Text('Incrementar'),
              ),
              ElevatedButton(
                onPressed: controller.mudarCor,
                child: Text('Mudar Cor'),
              ),
              ElevatedButton(
                onPressed: () => controller.irParaUsuarios('Igor', 25),
                child: Text('Usuarios'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
