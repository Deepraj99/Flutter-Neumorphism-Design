import 'package:flutter/material.dart';
import 'colors.dart';
import 'AppBar.dart';
import 'NeumorphismButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: white,
                child: Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          childAspectRatio: 1,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          children: [
                            Neumorphism("A", 1),
                            Neumorphism("B", 2),
                            Neumorphism("C", 3),
                            Neumorphism("D", 4),
                            Neumorphism("E", 5),
                            Neumorphism("F", 6),
                            Neumorphism("G", 7),
                            Neumorphism("H", 8),
                            Neumorphism("I", 9),
                            Neumorphism("J", 10),
                            Neumorphism("K", 11),
                            Neumorphism("L", 12),
                            Neumorphism("M", 13),
                            Neumorphism("N", 14),
                            Neumorphism("O", 15),
                            Neumorphism("P", 16),
                            Neumorphism("Q", 17),
                            Neumorphism("R", 18),
                            Neumorphism("S", 19),
                            Neumorphism("T", 20),
                            Neumorphism("U", 21),
                            Neumorphism("V", 22),
                            Neumorphism("W", 23),
                            Neumorphism("X", 24),
                            Neumorphism("Y", 25),
                            Neumorphism("Z", 26),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
