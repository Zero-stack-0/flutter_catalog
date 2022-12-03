// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Catalog App",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text("Test")),
          ListTile(
            autofocus: true,
            leading: Icon(Icons.flutter_dash),
            title: const Text(
              "About Us",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.AboutUs);
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: const Text("Login in",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18)),
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.LoginRoute);
            },
          ),
          ListTile(
            autofocus: true,
            leading: Icon(Icons.flutter_dash),
            title: const Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ]),
      ),
    );
  }
}
