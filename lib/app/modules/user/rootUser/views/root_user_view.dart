import 'package:angkut_kita/app/modules/routeOption/views/route_option_view.dart';
import 'package:angkut_kita/app/modules/user/homeUser/views/home_user_view.dart';
import 'package:angkut_kita/app/modules/user/orderUser/views/order_user_view.dart';
import 'package:angkut_kita/app/modules/user/profileUser/views/profile_user_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../settings/constants.dart';

class RootUserView extends StatefulWidget {
  const RootUserView({super.key});

  @override
  State<RootUserView> createState() => _RootUserViewState();
}

class _RootUserViewState extends State<RootUserView> {
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions() {
    return [
      HomeUserView(),
      const OrderUserView(),
      const RouteOptionView(),
      ProfileUserView()
    ];
  }

  List<Widget> getIconList() {
    return [
      Icon(Icons.home,
          size: 30,
          color: _bottomNavIndex == 0 ? Colors.white : Constants.primaryColor),
      Icon(Icons.history,
          size: 30,
          color: _bottomNavIndex == 1 ? Colors.white : Constants.primaryColor),
      Icon(Icons.map,
          size: 30,
          color: _bottomNavIndex == 2 ? Colors.white : Constants.primaryColor),
      Icon(Icons.person,
          size: 30,
          color: _bottomNavIndex == 3 ? Colors.white : Constants.primaryColor),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.white,
        buttonBackgroundColor: Constants.primaryColor,
        index: _bottomNavIndex,
        items: getIconList(),
        animationDuration: const Duration(milliseconds: 300),
        animationCurve: Curves.easeInOut,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
