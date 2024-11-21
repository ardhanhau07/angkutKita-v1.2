import 'package:get/get.dart';

import '../controllers/logindriver_controller.dart';

class LogindriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogindriverController>(
      () => LogindriverController(),
    );
  }
}
