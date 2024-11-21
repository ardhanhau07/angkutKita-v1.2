import 'package:angkut_kita/app/settings/constants.dart';
import 'package:angkut_kita/app/widgets/linear_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = Get.height;
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/angkotKitaLogo.png',
            width: screenHeight * .4,
            height: screenHeight * .2,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 30),
          Text(
            'AngkutKita',
            style: Constants.DisplayMediumBold,
          ),
          SizedBox(
            height: 20,
          ),
          linearProgressBar()
        ],
      )),
    );
  }
}
