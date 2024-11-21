import 'package:angkut_kita/app/modules/home/views/home_view.dart';
import 'package:angkut_kita/app/modules/incomeDriver/views/income_driver_view.dart';
import 'package:angkut_kita/app/modules/profileDriver/views/profile_driver_view.dart';
import 'package:angkut_kita/app/modules/routeOption/views/route_option_view.dart';
import 'package:angkut_kita/app/settings/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class RootDriverView extends StatefulWidget {
  const RootDriverView({super.key});

  @override
  State<RootDriverView> createState() => _RootDriverViewState();
}

class _RootDriverViewState extends State<RootDriverView> {
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions() {
    return [
      const HomeView(),
      const IncomeDriverView(),
      const RouteOptionView(),
      const ProfileDriverView(),
    ];
  }

  List<Widget> getIconList() {
    return [
      Icon(Icons.home,
          size: 30,
          color: _bottomNavIndex == 0 ? Colors.white : Constants.primaryColor), 
      Icon(Icons.money,
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
