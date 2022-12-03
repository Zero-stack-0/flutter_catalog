// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/Loginpage",
      routes: {
        "/": (context) => Loginpage(),
        "/Login": (context) => Loginpage(),
        "/Homepage": (context) => Homepage()
      },
    );
  }
}
