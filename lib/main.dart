// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/login_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: "/Homepage",
      routes: {
        "/": (context) => Loginpage(),
        "/Login": (context) => Loginpage(),
        "/Homepage": (context) => Homepage()
      },
    );
  }
}
