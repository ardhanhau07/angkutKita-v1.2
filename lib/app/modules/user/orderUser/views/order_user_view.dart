import 'package:angkut_kita/app/widgets/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../settings/constants.dart';
import '../../../../widgets/routeAngkot.dart';
import '../controllers/order_user_controller.dart';

class OrderUserView extends GetView<OrderUserController> {
  const OrderUserView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Constants.primaryColor,
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Recent Order',
                style: Constants.BodyMediumBold,
              ),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: const TabBar(tabs: <Widget>[
                    Tab(text: 'Recent'),
                    Tab(text: 'Unpayed'),
                  ]),
                ))),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                      OrderHistory(
                          gambar: AssetImage('assets/images/angkotKitaLogo.png'),
                          title: 'Trayek ABB',
                          description: "Arjosari, Borobudur. Bunulrejo",
                          price: 7000,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                    ],
                  )),
            ),
            Center(child: Text('Unpayed Orders')),
          ],
        ),
      ),
    );
  }
}
