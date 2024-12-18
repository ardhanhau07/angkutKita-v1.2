import 'package:angkut_kita/app/modules/user/accountConfirmation/views/account_confirmation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../../../settings/constants.dart';
import '../controllers/create_account_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CreateAccountView extends GetView<CreateAccountController> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  CreateAccountView({super.key});

  Future<void> registerUser(BuildContext context, String username, String email,
      String password) async {
    final response = await http.post(
      Uri.parse(
          'https://83ef-103-17-77-3.ngrok-free.app/api/register'), // Ganti dengan URL API CodeIgniter
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode(
          {'username': username, 'email': email, 'password': password}),
    );

    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("User registered successfully")),
      );
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: AccountConfirmationView()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to register user")),
      );
    }
  }

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
                          controller: usernameController,
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
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: 'Input Your Email Here',
                              label: Text('Email'),
                              labelStyle: Constants.BodyMedium,
                              filled: true,
                              fillColor: Colors.transparent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintStyle: TextStyle(color: Colors.white54)),
                        ),
                        SizedBox(height: 15),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: 'Input Your Password',
                              label: Text('Password'),
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
                                String username = usernameController.text;
                                String email = emailController.text;
                                String password = passwordController.text;

                                if (username.isEmpty ||
                                    email.isEmpty ||
                                    password.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Please fill all fields")),
                                  );
                                } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                    .hasMatch(email)) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Please enter a valid email")),
                                  );
                                } else if (password.length < 6) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Password must be at least 6 characters")),
                                  );
                                } else {
                                  registerUser(
                                      context, username, email, password);
                                }
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
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
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
