import 'package:flutter/material.dart';
import 'colors.dart';

class MyAppBar extends AppBar {
  MyAppBar()
      : super(
          backgroundColor: white,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Neumor", //"CP ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "phism", //"Booster",
                style: TextStyle(
                  color: Color(0xff5868E0),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
}
