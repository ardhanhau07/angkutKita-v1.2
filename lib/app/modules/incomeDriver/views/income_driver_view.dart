import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/income_driver_controller.dart';

class IncomeDriverView extends GetView<IncomeDriverController> {
  const IncomeDriverView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'IncomeDriverView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
