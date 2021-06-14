import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
      // CASO PRECISAR USAR ALGUM DOS Get.off
      fenix: true,
    );
  }
}
