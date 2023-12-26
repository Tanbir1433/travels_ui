import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpage/home_page.dart';
import 'package:flutter_cubit/pages/navpage/main_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.green),
      home: WelcomePage(),
    );
  }
}
