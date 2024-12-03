import 'package:get/get.dart';

import '../controllers/income_driver_controller.dart';

class IncomeDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomeDriverController>(
      () => IncomeDriverController(),
    );
  }
}
