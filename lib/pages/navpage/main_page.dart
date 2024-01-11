import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpage/bar_item_page.dart';
import 'package:flutter_cubit/pages/home_page.dart';
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
  int currentindex = 0;
  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentindex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: "cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "me"),
        ],
      ),
    );
  }
}
