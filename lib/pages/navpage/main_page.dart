import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpage/bar_item_page.dart';
import 'package:flutter_cubit/pages/navpage/home_page.dart';
import 'package:flutter_cubit/pages/navpage/profile_page.dart';
import 'package:flutter_cubit/pages/navpage/search_page.dart';

class MainPAge extends StatefulWidget {
  const MainPAge({super.key});

  @override
  State<MainPAge> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPAge> {
  List pages = [
    HomePage(),
    BarItem(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[1],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  const [
          BottomNavigationBarItem(icon: Icon(Icons.apps)),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(icon: Icon(Icons.search)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
