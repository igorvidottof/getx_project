import 'package:get/get.dart';

import 'package:getx_project/app/modules/home/bindings/home_binding.dart';
import 'package:getx_project/app/modules/home/views/home_view.dart';
import 'package:getx_project/app/modules/usuarios/bindings/usuarios_binding.dart';
import 'package:getx_project/app/modules/usuarios/views/usuarios_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USUARIOS,
      page: () => UsuariosView(),
      binding: UsuariosBinding(),
    ),
  ];
}
