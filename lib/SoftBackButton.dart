import 'package:cp_booster/colors.dart';
import 'package:flutter/material.dart';

class CircularSoftButton extends StatelessWidget {
  double radius;
  final Widget icon;

  CircularSoftButton({Key key, this.radius, @required this.icon})
      : super(key: key) {
    if (radius == null || radius <= 0) radius = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              color: Color(0xFFF1F2F6),
              borderRadius: BorderRadius.circular(radius),
              boxShadow: kboxShadow,
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
