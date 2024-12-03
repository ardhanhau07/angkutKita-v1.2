import 'package:angkut_kita/app/modules/driver/driverPhoneConfirm/views/driver_phone_confirm_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../settings/constants.dart';
import '../controllers/driver_email_confirm_controller.dart';

class DriverEmailConfirmView extends GetView<DriverEmailConfirmController> {
  const DriverEmailConfirmView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Account Confirmation',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 336,
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(10),
                    borderRadius: BorderRadius.circular(34)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please enter the 6-digit code sent to your email :',
                        style: Constants.BodySmall,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your code here.',
                            label: Text('Code'),
                            labelStyle: Constants.BodyMedium,
                            filled: true,
                            fillColor: Colors.transparent,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintStyle: TextStyle(color: Colors.white54)),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: 300,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: DriverPhoneConfirmView()));
                            },
                            child: Text(
                              'Confirm',
                              style: Constants.BodySmall,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Don't get any code?",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Resent!',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.amber),
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
