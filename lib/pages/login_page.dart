// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:matcher/matcher.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();

  String Name = "";
  bool isButtonClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/login_image.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Welcome $Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 26.0, horizontal: 28.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter username",
                                labelText: "Usename"),
                            onChanged: (value) {
                              Name = value;
                              setState(() {});
                            },
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Username should not be empty";
                              }
                            }),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "password cannot be empty";
                              }

                              if (value.length < 6) {
                                return "password should be greater than 6";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            splashColor: Color.fromARGB(255, 177, 138, 183),
                            onTap: () async {
                              setState(() {
                                isButtonClicked = true;
                              });

                              if (_formKey.currentState!.validate()) {
                                await Future.delayed(Duration(seconds: 1));
                                // ignore: use_build_context_synchronously
                                Navigator.pushNamed(
                                    context, MyRoutes.HomeRoute);
                                setState(() {
                                  isButtonClicked = false;
                                });
                              }
                              return null;
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 40,
                              width: isButtonClicked ? 100 : 150,
                              alignment: Alignment.center,
                              child: isButtonClicked
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text("Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
