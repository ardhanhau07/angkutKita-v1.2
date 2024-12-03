import 'package:angkut_kita/app/modules/driver/logindriver/views/logindriver_view.dart';
import 'package:angkut_kita/app/modules/user/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../settings/constants.dart';
import '../controllers/role_controller.dart';

class RoleView extends GetView<RoleController> {
  const RoleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('How can we help you?',
              style: GoogleFonts.lexendDeca(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  letterSpacing: -4,
                  color: Colors.white)),
          SizedBox(height: 5),
          Text('Select the option that you want.',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
          SizedBox(height: 60),
          InkWell(
            onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogindriverView()),
              );
            },
            child: Container(
              width: 330,
              height: 169,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/driver.png',
                      ),
                    ),
                    SizedBox(height: 16),
                    Text('Driver',
                        style: GoogleFonts.lexendDeca(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Constants.primaryColor)),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
            child: Container(
              width: 330,
              height: 169,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                            image: AssetImage(
                          'assets/images/angkotKitaLogo.png',
                        ))),
                    SizedBox(height: 10),
                    Text('Order an Angkot',
                        style: GoogleFonts.lexendDeca(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Constants.primaryColor)),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
