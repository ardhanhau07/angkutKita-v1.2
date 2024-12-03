import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../settings/constants.dart';
import '../../../widgets/routeAngkot.dart';
import '../controllers/route_option_controller.dart';

class RouteOptionView extends GetView<RouteOptionController> {
  const RouteOptionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Route Option',
              style: Constants.BodyMediumBold,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: 200,
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari Rute',
                    hintStyle: TextStyle(color: Colors.white54, fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
                SizedBox(
                  height: 10,
                ),
                AngkotRoute(
                    gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                    title: 'Trayek ABB',
                    description: "Arjosari, Borobudur. Bunulrejo"),
              ],
            ),
          ),
        ));
  }
}
