import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// ignore_for_file: prefer_const_constructors
class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  String Name = "";
  bool isButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/about_us.png"),
          SizedBox(height: 20),
          Text(
            "This is test of learning $Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(children: [
              TextFormField(
                onChanged: (value) {
                  Name = value;
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: "Please enter review about us",
                    labelText: "Review"),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email for further disscussion"),
              ),
              Center(child: Image.asset("assets/images/about_us_second.png")),
              InkWell(
                onTap: () async {
                  isButtonClicked = true;
                  setState(() {});
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.LoginRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isButtonClicked ? Colors.green : Colors.red),
                  alignment: Alignment.center,
                  height: isButtonClicked ? 35 : 30,
                  width: isButtonClicked ? 100 : 150,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Image.asset("assets/images/about_us_second.png"),
              )
            ]),
          )
        ])));
  }
}
