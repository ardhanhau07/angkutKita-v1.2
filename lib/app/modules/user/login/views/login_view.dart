import 'dart:math';

import 'package:angkut_kita/app/modules/user/createAccount/views/create_account_view.dart';
import 'package:angkut_kita/app/services/auth_services.dart';
import 'package:angkut_kita/app/settings/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import '../../rootUser/views/root_user_view.dart';
import '../controllers/login_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginView extends GetView<LoginController> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginView({super.key});

  // Future<void> loginUser(
  //     BuildContext context, String username, String password) async {
  //   final response = await http.post(
  //     Uri.parse(
  //         'https://83ef-103-17-77-3.ngrok-free.app/api/login'), // Ganti dengan URL API CodeIgniter
  //     headers: {'Content-Type': 'application/json; charset=UTF-8'},
  //     body: jsonEncode({'username': username, 'password': password}),
  //   );

  //   if (response.statusCode == 200) {
  //     final data = jsonDecode(response.body);
  //     print(data);
  //     if (data['token'] != null) {
  //       await saveToken(data['token']);
  //       Navigator.push(
  //           context,
  //           PageTransition(
  //               type: PageTransitionType.fade, child: RootUserView()));
  //     } else {
  //       // Tampilkan pesan jika token tidak ditemukan
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(
  //             content: Text("Token tidak ditemukan dalam respons API")),
  //       );
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(content: Text("Username atau password salah")),
  //     );
  //     print('Failed to login: ${response.body}');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    void _login() {
      if (usernameController.text == 'user' &&
          passwordController.text == 'user') {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: RootUserView()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid email or password')),
        );
      }
    }

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
                          controller: passwordController,
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
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                            onPressed:
                                _login, // Tidak memanggil, hanya referensi
                            child: Text(
                              'Log In',
                              style: Constants.BodySmall,
                            ),
                          ),
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
