import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_driver_controller.dart';

class ProfileDriverView extends GetView<ProfileDriverController> {
  const ProfileDriverView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileDriverView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProfileDriverView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
