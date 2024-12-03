import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../settings/constants.dart';
import '../../rootDriver/views/root_driver_view.dart';
import '../controllers/driver_phone_confirm_controller.dart';

class DriverPhoneConfirmView extends GetView<DriverPhoneConfirmController> {
  const DriverPhoneConfirmView({super.key});
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text('Hello!', style: Constants.DisplayMediumBold),
            SizedBox(
              height: 5,
            ),
            Text(
              "Let’s getting touch",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              "with registering your number.",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                width: 336,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(10),
                    borderRadius: BorderRadius.circular(34)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'With a valid number, you can access reides, deliceries, and our other services.',
                        style: Constants.BodySmall,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CountryCodePicker(
                            onChanged: (countryCode) {
                              print(
                                  'Selected Country Code: ${countryCode.dialCode}');
                            },
                            initialSelection: 'ID',
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                            textStyle: TextStyle(color: Colors.white),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Your Phone Number.',
                                  label: Text('Number'),
                                  labelStyle: Constants.BodyMedium,
                                  filled: true,
                                  fillColor: Colors.transparent,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  hintStyle: TextStyle(color: Colors.white54)),
                            ),
                          ),
                        ],
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
                                      child: RootDriverView()));
                            },
                            child: Text(
                              'Confirm',
                              style: Constants.BodySmall,
                            )),
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
