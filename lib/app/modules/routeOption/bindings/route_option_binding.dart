import 'package:get/get.dart';

import '../controllers/route_option_controller.dart';

class RouteOptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RouteOptionController>(
      () => RouteOptionController(),
    );
  }
}
