import 'package:get/get.dart';

import '../controllers/driver_email_confirm_controller.dart';

class DriverEmailConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriverEmailConfirmController>(
      () => DriverEmailConfirmController(),
    );
  }
}
