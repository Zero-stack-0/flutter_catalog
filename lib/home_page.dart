import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int learningDays = 60;
    String textShouldBe = "This is conditional";
    if (learningDays > 20) {
      textShouldBe = "This is conditional";
    }
    return Scaffold(
      appBar: AppBar(title: Text("$textShouldBe $learningDays App")),
      body: Center(
        child: Container(color: Colors.pink, height: 200, width: 100),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        semanticLabel: textShouldBe,
      ),
    );
  }
}
