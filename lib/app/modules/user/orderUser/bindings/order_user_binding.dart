import 'package:get/get.dart';

import '../controllers/order_user_controller.dart';

class OrderUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderUserController>(
      () => OrderUserController(),
    );
  }
}
