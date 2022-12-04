// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo/utils/routes.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isButtonClicked = false;
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Catalog App",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          isButtonClicked = true;
                        },
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            alignment: Alignment.center,
                            height: 100,
                            width: 150,
                            decoration: BoxDecoration(
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 10.0,
                                      offset: Offset.zero)
                                ],
                                color: isButtonClicked
                                    ? Colors.green
                                    : Colors.blueAccent,
                                borderRadius: BorderRadius.circular(25)),
                            child: Image.asset(
                              "assets/images/about_us.png",
                              width: 200,
                              fit: BoxFit.cover,
                            ))),
                    SizedBox(height: 30),
                    Container(
                      child: Text(
                        "This is about us information about our company",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
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
