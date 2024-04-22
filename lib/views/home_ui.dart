// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motor_show_2024_project/views/car_calculate_ui.dart';
import 'package:motor_show_2024_project/views/honda_view_ui.dart';
import 'package:motor_show_2024_project/views/mazda_view_ui.dart';
import 'package:motor_show_2024_project/views/mitsubishi_view_ui.dart';
import 'package:motor_show_2024_project/views/toyota_view_ui.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  //variable Views
  List<Widget> _showView = [
    ToyotaViewUI(),
    HondaViewUI(),
    CarCalculateUI(),
    MitsubishiViewUI(),
    MazdaViewUI()
  ];
  int _currentIndex = 2;
  // final _Notchcontroller = NotchBottomBarController(index: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//appbar
      // appBar: AppBar(
      //   title: Text(
      //     'คำนวณค่างวดรถ',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      //   bottom: PreferredSize(
      //     preferredSize: const Size.fromHeight(4.0),
      //     child: Container(
      //       color: Colors.black,
      //       height: 1.0,
      //     ),
      //   ),
      // ),
//start Body
      body: _showView[_currentIndex],
//navigation bar
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.yellow,
        // unselectedItemColor: Colors.grey[400],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoToyota.png',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            title: Text(''),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoHonda.png',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            title: Text(''),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoAuto.jpg',
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            title: Text(''),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoMitsubishi.png',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            title: Text(''),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/images/logoMazda.jpg',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            title: Text(''),
            selectedColor: Colors.grey,
            unselectedColor: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}
