import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/route_option_controller.dart';

class RouteOptionView extends GetView<RouteOptionController> {
  const RouteOptionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RouteOptionView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RouteOptionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
