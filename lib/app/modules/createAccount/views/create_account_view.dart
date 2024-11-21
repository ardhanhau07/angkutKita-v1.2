import 'package:angkut_kita/app/modules/accountConfirmation/views/account_confirmation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../settings/constants.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({super.key});
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
            child: Padding(
              padding: EdgeInsets.only(top: 70, bottom: 70),
              child: Column(
                        children: [
              Text(
                'Creat Account',
                style: Constants.DisplayMediumBold,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Create a New Account',
                style: Constants.BodySmall,
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
                    padding: EdgeInsets.only(left: 15, right: 15, top: 11),
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
                              hintText: 'Input Your Password Here',
                              label: Text('Password'),
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
                              hintText: 'Confirm Password',
                              label: Text('Confirm Password'),
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
                                        child: AccountConfirmationView()));
                              },
                              child: Text(
                                'Create Account',
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
                              "Don't have any account?",
                              style: TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Create a new account!',
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
      ),
    );
  }
}
