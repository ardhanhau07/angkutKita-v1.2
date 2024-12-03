import 'package:get/get.dart';

import '../controllers/driver_phone_confirm_controller.dart';

class DriverPhoneConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriverPhoneConfirmController>(
      () => DriverPhoneConfirmController(),
    );
  }
}
