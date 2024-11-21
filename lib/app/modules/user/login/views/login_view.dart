import 'package:angkut_kita/app/modules/createAccount/views/create_account_view.dart';
import 'package:angkut_kita/app/modules/rootDriver/views/root_driver_view.dart';
import 'package:angkut_kita/app/settings/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Center(
              child: Column(
            children: [
              Text(
                'Welcome Back',
                style: Constants.DisplayMediumBold,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Sign to Continue',
                style: Constants.BodySmall,
              ),
              Image(image: AssetImage('assets/images/backgroundCouple.png')),
              Container(
                  width: 336,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(10),
                      borderRadius: BorderRadius.circular(34)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 27, right: 27, top: 11),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Input Your Username Here',
                              label: Text('Username'),
                              labelStyle: Constants.BodyMedium,
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Input Your Username Here',
                              label: Text('Password'),
                              labelStyle: Constants.BodyMedium,
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password ?',
                                style: Constants.BodySmallBold,
                              )),
                        ),
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
                                'Log In',
                                style: Constants.BodySmall,
                              )),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 130,
                              height: 31,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  icon: Image.asset(
                                      'assets/images/Logo Google.png'),
                                  label: Text(
                                    'Log In with Google',
                                    style: TextStyle(fontSize: 11),
                                  )),
                            ),
                            SizedBox(width: 15),
                            SizedBox(
                              width: 130,
                              height: 31,
                              child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  icon: Image.asset(
                                      'assets/images/Logo Facebook.png'),
                                  label: Text(
                                    'Log In with Facebook',
                                    style: TextStyle(fontSize: 11),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Don't have any account?",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: CreateAccountView()));
                        },
                        child: Text(
                          'Create a new account!',
                          style: TextStyle(fontSize: 12, color: Colors.amber),
                        ))
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
