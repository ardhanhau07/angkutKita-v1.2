import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/logindriver_controller.dart';

class LogindriverView extends GetView<LogindriverController> {
  const LogindriverView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LogindriverView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LogindriverView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
