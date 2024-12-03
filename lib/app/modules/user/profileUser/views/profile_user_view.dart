import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../settings/constants.dart';
import '../../../role/views/role_view.dart';
import '../controllers/profile_user_controller.dart';

class ProfileUserView extends GetView<ProfileUserController> {
  const ProfileUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/ojekdriver.jpg'),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Input Your Name Here',
                  label: Text(
                    'Name',
                    style: TextStyle(color: Constants.primaryColor),
                  ),
                  labelStyle: Constants.BodyMedium,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: TextStyle(color: Colors.white54)),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Input Your Username Here',
                  label: Text(
                    'Address',
                    style: TextStyle(color: Constants.primaryColor),
                  ),
                  labelStyle: Constants.BodyMedium,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: TextStyle(color: Colors.white54)),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Input Your Username Here',
                  label: Text(
                    'Mobile Number',
                    style: TextStyle(color: Constants.primaryColor),
                  ),
                  labelStyle: Constants.BodyMedium,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: TextStyle(color: Colors.white54)),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: RoleView()));
                  },
                  child: Text(
                    'Chane to be a driver',
                    style: Constants.BodySmall,
                  )),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 350,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade, child: RoleView()));
                  },
                  child: Text(
                    'Log Out',
                    style: Constants.BodySmall,
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
