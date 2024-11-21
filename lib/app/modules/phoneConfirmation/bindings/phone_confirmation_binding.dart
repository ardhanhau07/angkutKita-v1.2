import 'package:get/get.dart';

import '../controllers/phone_confirmation_controller.dart';

class PhoneConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneConfirmationController>(
      () => PhoneConfirmationController(),
    );
  }
}
