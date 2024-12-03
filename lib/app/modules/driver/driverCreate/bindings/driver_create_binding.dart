import 'package:get/get.dart';

import '../controllers/driver_create_controller.dart';

class DriverCreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriverCreateController>(
      () => DriverCreateController(),
    );
  }
}
