import 'package:get/get.dart';

import '../controllers/account_confirmation_controller.dart';

class AccountConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountConfirmationController>(
      () => AccountConfirmationController(),
    );
  }
}
