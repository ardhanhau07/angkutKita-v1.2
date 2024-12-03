import 'package:get/get.dart';

import '../controllers/root_driver_controller.dart';

class RootDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootDriverController>(
      () => RootDriverController(),
    );
  }
}
